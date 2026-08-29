# Bracket Avatar Drain - Operator Runbook

Battles Brackets keeps a custom entrant image on the user's device until the
bracket is saved to their account. Promotion uploads those bytes to Convex
storage and records a **binding row** in `bracketAvatarBlobs` naming the owner
and, once attached, the bracket. Reclaiming a blob is therefore authorizable:
the deleter reads a binding row, never "a document I own used to point at this".

## The cron

`drain bracket avatar blobs` runs **daily at 12:00 UTC**
(`src/convex/crons.ts` -> `internal.functions.bracketAvatarBlobs.drainBracketAvatarBlobs`).

It is **the only code in the repo that calls `ctx.storage.delete` on bracket
avatar blobs.** Nothing in a user-facing mutation deletes these bytes; the
mutations only PATCH `dereferencedAt` on the binding row. If the cron is
disabled, blobs leak (recoverable). If anything else gains the ability to delete
them, that is a cross-tenant hazard (not recoverable).

It drains two populations on one bounded pass:

- rows marked `dereferencedAt` that are past a 1 hour grace period, and
- rows that never gained a `simId` within 24 hours (an abandoned promote).

The pass is batch-capped and reschedules itself a bounded number of times, so a
large backlog is spread across runs rather than retried forever inside one.

## Reading the result

The function returns:

```json
{ "deleted": 0, "storageDeleteFailures": 0 }
```

- **`deleted`** counts BINDING ROWS removed. The row delete is unconditional -
  it happens whether or not the storage delete succeeded. **`deleted` on its own
  is therefore blind** and must never be read as "bytes reclaimed".
- **`storageDeleteFailures`** counts blobs whose `ctx.storage.delete` threw. This
  is the number that carries the signal.

### Normal

A handful of `storageDeleteFailures` is expected and is not an incident. The
usual cause is a blob that is already gone: a partial prior run, or a moderation
delete. The row is drained anyway, deliberately, so a permanently-missing blob
cannot block the batch behind it forever.

### Incident

**`storageDeleteFailures` tracking `deleted`** - that is, most or all of the
pass failing rather than a few - means the drain is **destroying binding rows
without reclaiming any bytes.** Every row it removes this way is a blob that can
never be reclaimed again, because the binding row was the only authorization to
delete it.

**Response: disable the cron before the next pass**, then investigate. Rows left
undrained cost storage; rows drained against a failing storage backend cost the
bytes permanently.

Check `console.error("Storage delete failed during bracket avatar drain", ...)`
in the Convex logs for the underlying error before re-enabling.

## Related

- Table and helpers: `src/convex/functions/bracketAvatarBlobs.ts`,
  `src/convex/schema/bracketSims.ts`.
- Mark sites (patch only, never delete): `bracketSims.saveDocument`,
  `bracketSims.remove`.
- Bind route: `src/routes/api/brackets/avatar/+server.ts`.
