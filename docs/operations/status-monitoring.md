# Status & Health Monitoring - Operator Runbook

## Endpoints (deployed with the app)
- `GET /api/health` - liveness (static, always 200 if the Worker serves).
- `GET /api/health/deep` - per-component readiness JSON (200, or 503 only when a
  CRITICAL component - app/api_v1/auth/convex - is down). CORS `*`.
- `GET /metrics` - Prometheus exposition; requires `Authorization: Bearer
  $METRICS_AUTH_TOKEN`.
- `https://<deployment>.convex.site/health` - Worker-independent DB signal.

## Secrets to set before/at deploy
- Worker: `METRICS_AUTH_TOKEN` (Bearer for `/metrics`). Set via the deploy
  pipeline's secret store (same mechanism as other Worker secrets).
- No new Convex secrets (the probe reads public provider status pages).
- Better Stack: only the Uptime API token used to apply the Terraform. The public
  API v1 monitor matches the `api_v1:ok` keyword on `/api/health/deep`, so it needs
  NO TeamBattles API key (nothing to recreate on a DB reset). See
  `infra/betterstack/README.md`.
- `CONVEX_SITE_URL` naming-collision caveat: the Better Stack Terraform's
  `convex_site_url` is the Convex `.convex.site` **deployment** host (for the
  `<deployment>.convex.site/health` monitor), NOT the Worker-side `CONVEX_SITE_URL`
  app URL env var (OAuth callbacks). Same name, different things - see
  `infra/betterstack/README.md`.

## Convex
- Run `npx convex codegen` after merging (the new table/functions/route changed
  `_generated`). Heed the shared-dev-deployment contention: deploy from this
  worktree intentionally.
- The `probe service health` cron writes the `statusSnapshots` singleton every
  minute.

## Better Stack
- See `infra/betterstack/README.md`. Apply Terraform AFTER deploy; import monitor
  `4569363` first.

## Grafana (future, optional)
- Point a Prometheus/Grafana Alloy/Synthetic-Monitoring scrape at `/metrics` with
  the bearer token. No work required now; the endpoint already serves it.
