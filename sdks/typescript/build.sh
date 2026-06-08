#!/usr/bin/env bash
# Build the TeamBattles TypeScript SDK. Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/typescript/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

# --ignore-workspace is REQUIRED: this package lives inside the root pnpm workspace, so a
# plain `pnpm install` resolves to the root and never installs the SDK's own kiota runtime
# deps (@microsoft/kiota-*), leaving every generated model's `additionalData` (from
# AdditionalDataHolder) unresolved and failing tsc. Installing standalone fixes that.
pnpm install --ignore-workspace
pnpm build
