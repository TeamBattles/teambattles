# Battles Bot - Operator Runbook

The Discord + Telegram bot is HTTP-only (no gateway / long-polling). Its backend
lives entirely in Convex; cards are rendered by POSTing to secret-gated SvelteKit
`/og/bot/*` routes. This is the operator/deployment surface. End-user and admin
behavior is documented in the published bot docs (see
`/tools/bot/notifications` for event routing and DMs).

## HTTP endpoints (Convex `.convex.site` host)
All four are served by the Convex deployment, not the SvelteKit Worker.
- `POST /discord/interactions` - slash-command + component receiver. Ed25519
  verify over (timestamp + raw body) with `DISCORD_PUBLIC_KEY`; 300s freshness
  window. 401 on bad signature (Discord sends adversarial probes); 500 if
  `DISCORD_PUBLIC_KEY` / `DISCORD_APPLICATION_ID` unset. `PING` -> `PONG`;
  commands defer-ack within 3s, then the scheduler runs the dispatcher.
- `POST /discord/events` - install tracking. Same Ed25519 regime but a WIDER
  **660s** freshness window, because Discord retries failed events with the
  original signed timestamp for ~10 min. Only `APPLICATION_AUTHORIZED`
  (`integration_type === 0`) schedules `recordGuildInstall`; everything else
  returns 204. `APPLICATION_DEAUTHORIZED` is intentionally NOT handled (see
  uninstall caveat below).
- `POST /telegram/webhook` - Telegram update receiver. Constant-time compare of
  the per-bot secret token Telegram echoes (against `TELEGRAM_WEBHOOK_SECRET`);
  401 on forgery, 500 if the secret is unset, 400 on an unparseable body.
  Dedupes via `botProcessedUpdates`, then schedules dispatch.
- `GET /health` - Worker-independent health probe.

## Discord setup
1. In the Discord application's settings, point **Interactions Endpoint URL** at
   `https://<convex-site>/discord/interactions` and the **Events Webhook URL** at
   `https://<convex-site>/discord/events`. The Events URL records guild installs
   (`APPLICATION_AUTHORIZED`); without it, ownership claiming falls back to the
   first `/setup` runner.
2. Set the Convex env vars: `DISCORD_PUBLIC_KEY`, `DISCORD_APPLICATION_ID`,
   `DISCORD_BOT_TOKEN`, `DISCORD_CLIENT_ID`, `DISCORD_CLIENT_SECRET`.
3. Register the command set:
   - `pnpm bot:register-commands` - PUTs the catalog **globally** to
     `applications/<APP_ID>/commands`. Re-run after any command-set change.
   - `pnpm bot:register-commands --guild <id>` - registers to one guild for
     instant dev propagation (global registration can take up to an hour).
   The script needs `DISCORD_APPLICATION_ID` + `DISCORD_BOT_TOKEN` exported; auth
   header is `Bot <TOKEN>`.

## Telegram setup
1. Create the bot via **BotFather**; copy its token.
2. Set the Convex env vars: `TELEGRAM_BOT_TOKEN`, `TELEGRAM_WEBHOOK_SECRET`,
   `CONVEX_SITE_URL` (webhook base), and `TELEGRAM_BOT_USERNAME` (deep links;
   optional - see below).
3. Run `pnpm bot:register-telegram`. It calls `setMyCommands` **twice** (the
   private-chat scope `all_private_chats` and the group scope `all_group_chats`),
   then `setWebhook` to `<CONVEX_SITE_URL>/telegram/webhook` with
   `secret_token = TELEGRAM_WEBHOOK_SECRET` and
   `allowed_updates = ['message','callback_query','my_chat_member']`. Needs
   `TELEGRAM_BOT_TOKEN` + `TELEGRAM_WEBHOOK_SECRET` + `CONVEX_SITE_URL` exported.

With `TELEGRAM_BOT_USERNAME` unset, the link tab degrades gracefully: no `t.me`
deep link / QR is built and the user is shown a documented manual code-paste step.

## Env / secret matrix
The bot reads two distinct runtimes. Most "tuning" knobs people look for do NOT
exist as env vars - see *Delivery behavior* below.

### Convex deployment
| Var | Purpose |
| --- | --- |
| `DISCORD_PUBLIC_KEY` | Ed25519 verify for `/discord/interactions` + `/discord/events` |
| `DISCORD_APPLICATION_ID` | Bot application id (command registration, install URL) |
| `DISCORD_BOT_TOKEN` | REST calls (channel posts, DM channel open, entity probe). No separate DM token |
| `DISCORD_CLIENT_ID` | Discord OAuth (account link) |
| `DISCORD_CLIENT_SECRET` | Discord OAuth (account link) |
| `TELEGRAM_BOT_TOKEN` | Telegram Bot API calls |
| `TELEGRAM_WEBHOOK_SECRET` | Secret-token gate for `/telegram/webhook` |
| `CONVEX_SITE_URL` | SvelteKit app URL: OAuth callback host + Telegram `setWebhook` base |
| `SITE_URL` | Card-render base host for `/og/bot/*`. Defaults to `https://teambattles.gg` if unset (so requests still go *somewhere* - the wrong host in a dev/preview deploy) |
| `BOT_RENDER_SECRET` | Shared secret sent as `x-bot-render-secret` on every `/og/bot/*` render call |

### SvelteKit Cloudflare Worker (`$env`)
| Var | Purpose |
| --- | --- |
| `BOT_RENDER_SECRET` | Validates the `x-bot-render-secret` header on `/og/bot/*` (must match the Convex value, or every card 401s to a text fallback) |
| `PUBLIC_TURNSTILE_SITE_KEY` | Client Turnstile widget on `/bot/link` |
| `TURNSTILE_SECRET_KEY` | Server-side Turnstile verify before `stampBotVerified` |
| `TELEGRAM_BOT_USERNAME` | Builds the `t.me` deep link / QR; absent => link tab degrades to manual code paste |
| `DISCORD_INVITE_URL` | Discord invite link (landing / maintenance) |

`BOT_RENDER_SECRET` must be set in BOTH runtimes with the same value. Registration
scripts run with `tsx` and read from `process.env`, so export the required vars
before running them. No D1 / KV / R2 bindings and no extra Worker secrets beyond
the above.

## Codegen & messages
- `npx convex codegen` - run after merging schema/function changes. Expect a
  **zero diff** on a correctly-checked-in tree; a non-empty diff means generated
  types are stale. Heed the shared-dev-deployment contention: deploy from the
  intended worktree.
- `pnpm bot:messages` - regenerates the bot's error-message / template surface
  from the catalog. Not a deployment step, but run it to confirm no drift.

## Convex bot tables
State lives in 13 `bot*`-prefixed tables in `src/convex/schema/bot.ts`, plus
additive fields on the shared `users` table and reuse of `authAccounts` for
platform identity. Use the EXACT names below.

| Table | What it holds |
| --- | --- |
| `botGuilds` | Per-guild install record: platform, status, installer/owner, `plugins.{matchmaking,leagues}` (seeded `enabled:false`), per-command overrides |
| `botGuildManagers` | Co-managers (the owner is NOT a manager row); `source = invited \| former_owner` |
| `botGuildLeagues` | League attachments (with optional per-league `commandChannels`) |
| `botGuildFollows` | Org / team follow attachments (`targetType = org \| team`) |
| `botGuildMatchmaking` | Matchmaking-game attachments; `gameId` is a `games._id` document id stored as a string, NOT a `$lib/definitions` slug |
| `botGuildEventRoutes` | Routing-matrix rows: (attachmentType, attachmentId, eventKey) -> channelId + enabled; carries `failCount` / `autoDisabledAt` for auto-disable |
| `botGuildEntityCache` | Transient Discord channels+roles picker cache (120s TTL; no cleanup cron) |
| `botLinkCodes` | Single-use account-link codes (Telegram `/start <code>` deep-link mint) |
| `botDeliveries` | Per-row outbound delivery worker queue (followups, channel messages, DMs) |
| `botRateBuckets` | Durable token-bucket rate limiter (peek-then-commit gate) |
| `botInteractionState` | Discord component/modal multi-step flow state |
| `botInputFlows` | Telegram force-reply text-input wizard state (modal substitute) |
| `botProcessedUpdates` | Telegram `update_id` dedupe table |

Additive, NOT separate tables: `users.notificationPreferences` gains
`botDmEnabled`, `disabledBotDm`, `botDmFailCount`; `users.botVerifiedAt` is the
one-time human-verification stamp. Platform identity reuses the existing
`authAccounts` table (Discord via `providerAndAccountId`; Telegram via a
lowercase `provider:'telegram'` row) - no new bot index.

**Common mis-namings to avoid:** `botInstalls`, `botSettings`, `botRoutes`,
`botFollows`, `botLeagueAttachments` are NOT real table names. The real ones are
above.

## Crons
Five bot-specific crons in `src/convex/crons.ts`; each self-reschedules to drain
any backlog beyond one bounded batch.
| Name | Schedule | Sweeps |
| --- | --- | --- |
| `cleanup expired bot interaction state` | every 5 min | expired `botInteractionState` rows |
| `cleanup expired bot input flows` | every 5 min | expired `botInputFlows` rows |
| `reap stale delivering bot deliveries` | every 5 min | re-queues `botDeliveries` stranded in `delivering` past timeout + margin |
| `sweep bot delivery retention` | daily, `hourUTC 3` | deletes `delivered`/`dead_lettered` `botDeliveries` older than 7 days |
| `sweep telegram processed updates` | daily, `hourUTC 2` | deletes `botProcessedUpdates` older than ~2 days |

(`probe service health`, every 1 min, is general infra - not bot-specific.)
`botGuildEntityCache` has no cron; it is bounded by guild count and expires at
read time.

## Delivery behavior
Rate-bucket capacities/refill and all delivery timing are HARDCODED constants in
`src/convex/_helpers/bot/deliveryConstants.ts` - **not env-tunable**. Tuning any of
them requires a code change + redeploy; do not search for `DISCORD_*_CAPACITY` /
`BOT_DELIVERY_*` env vars.
- **Retry / dead-letter:** `MAX_BOT_DELIVERY_ATTEMPTS = 6`, exponential backoff
  (`BOT_BASE_BACKOFF_MS = 10s` up to `BOT_MAX_BACKOFF_MS = 6h`),
  `BOT_DELIVERY_TIMEOUT_MS = 10s`.
- **Retention:** delivered / dead-lettered rows are deleted after 7 days
  (`BOT_DELIVERY_RETENTION_MS`), in batches of `BOT_SWEEP_BATCH = 500`.
- **Auto-disable at 5 strikes:** a channel route auto-disables after 5
  consecutive 403/404s on its `channelId` (route `AUTO_DISABLE_THRESHOLD = 5`;
  `failCount` resets to 0 on any 2xx). A user's bot DMs auto-flip
  `botDmEnabled` off after 5 consecutive hard bounces
  (`DM_AUTO_DISABLE_THRESHOLD = 5`).
- **Rate-bucket capacities:** Discord channel 5 (refill 1/s), Discord global 50
  (refill 25), Discord DM 5 (refill 1), Telegram chat 1 (refill 1), Telegram
  group 20 (refill 20/60s), Telegram global 30 (refill 30). Discord seeds are a
  conservative starting point, adapted reactively from 429s.

A missing `DISCORD_BOT_TOKEN` is a permanent config error (immediate
dead-letter), distinct from a `status:0` network failure. DM channel open and
channel posts both use `DISCORD_BOT_TOKEN`; the `DISCORD_DM_*` names are
rate-bucket constants only, not a separate token.

## Uninstall caveat
- **Discord:** `APPLICATION_DEAUTHORIZED` is intentionally NOT handled (its
  payload lacks the guild id). Uninstall is detected LAZILY - a REST 403/404 on
  the entity probe flips `botGuilds.status` to `uninstalled`. A removed bot can
  show as still-installed until a manager next opens an access editor.
- **Telegram:** install/uninstall comes from `my_chat_member` updates (which is
  why it is in the registered `allowed_updates`).
