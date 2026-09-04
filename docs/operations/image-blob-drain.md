# Image Blob Drain - Operator Runbook

Every avatar, banner and logo uploaded through the site goes through
`POST /api/upload/image`: the server mints the Convex upload URL, forwards the
bytes itself, scans the stored blob, and records a **binding row** in
`imageBlobs` naming the owner and, once attached, the entity (`ownerKey`, e.g.
`team:<id>`). Reclaiming a blob is therefore authorizable: the deleter reads a
binding row, never "a row I can edit used to point at this".

## The cron

`drain image blobs` runs **daily at 13:00 UTC**
(`src/convex/crons.ts` -> `internal.functions.imageBlobs.drainImageBlobs`).

It is **the only code in the repo that calls `ctx.storage.delete` on an avatar,
banner or logo blob.** No user-facing mutation deletes these bytes; they only
PATCH `dereferencedAt` on the binding row. If the cron is disabled, blobs leak
(recoverable). If anything else gains the ability to delete them, that is a
cross-tenant hazard (not recoverable).

It drains two populations on one bounded pass:

- rows marked `dereferencedAt` that are past a 1 hour grace period, and
- rows that never gained an `ownerKey` within 24 hours (an abandoned upload).

The pass is batch-capped and reschedules itself a bounded number of times, so a
large backlog is spread across runs rather than retried forever inside one.

The flat 24 hour abandoned window is correct **only because every create-shaped
handler attaches in the same mutation that inserts its row** - including
`leagues/applications.submit`, which is why an application awaiting staff review
for days does not leave its logo sitting unattached. Any new pre-creation upload
flow that defers its attach silently converts this window into a delete of a live
image.

## Reading the result

The function returns:

```json
{ "deleted": 0, "storageDeleteFailures": 0 }
```

- **`deleted`** counts blobs whose storage deletion succeeded and whose binding
  row was then removed.
- **`storageDeleteFailures`** counts blobs whose `ctx.storage.delete` threw. The
  binding row is retained and its retry grace restarts, preserving the authority
  needed for a later attempt.

### Normal

A handful of `storageDeleteFailures` is expected and is not an incident. Failed
rows move out of the current batch until the one-hour retry grace expires, so
they do not block eligible rows behind them.

### Incident

**`storageDeleteFailures` tracking or exceeding `deleted`** - that is, most or
all of the pass failing rather than a few - means the storage backend is not
reclaiming bytes. Binding rows remain available for retry, but the backlog will
grow until deletion succeeds.

Investigate the storage errors before the backlog grows materially. Disabling the
cron is not required to preserve deletion authority because failed rows remain
bound and retry later.

Check `console.error("Storage delete failed during image blob drain", ...)` in
the Convex logs for the underlying error before re-enabling.

## Expected steady-state leakage

Blobs that already existed before this table shipped have **no binding row**, so
the drain can never see them and they leak permanently. That is intentional: only
the INCOMING storage id is ever asserted, never a stored one, which is what makes
the fail-closed cutover safe. Storage reclaimed by hand for those is a one-off
task, not a job for this cron.

A second, structural blind spot to know about: a row that carries an `ownerKey`
but no `dereferencedAt` matches **neither** pass. That is the correct state for a
live image, so it is not itself a fault - but it means a missing MARK does not
show up as a growing `deleted` count or a failure. It shows up as nothing at all.
If storage grows and the drain reports `{ deleted: 0 }` day after day, suspect a
write path that attaches without ever marking what it displaced rather than a
problem in the cron.

## Related

- Table and guards: `src/convex/schema/imageBlobs.ts`,
  `src/convex/_helpers/imageBlobs.ts`.
- Mint / bind / drain: `src/convex/functions/imageBlobs.ts`.
- Mark sites (patch only, never delete): the six `files.save*` mutations,
  `leagues/mutations.updateBranding`, `leagues/applications` withdraw + deny, and
  three tournament sites. Tournaments need three because they are the only entity
  whose branding write and branding APPLY are different mutations:
  `tournaments/lifecycle.updateCore` marks only before first approval (and marks a
  pending edit superseded by a later one); after that,
  `tournaments/adminReview.approve` marks what the applied set displaces and
  `tournaments/adminReview.reject` marks what a discarded set abandoned.
- Upload routes: `src/routes/api/upload/image/+server.ts` (session) and
  `src/routes/api/v1/uploads/image/+server.ts` (API key).
- Sibling runbook for the Battles Brackets table:
  `docs/operations/bracket-avatar-drain.md`.
