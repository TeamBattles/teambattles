#!/usr/bin/env bash
# Build the TeamBattles TypeScript SDK. Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/typescript/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

pnpm install
pnpm build
