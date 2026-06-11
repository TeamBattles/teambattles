#!/usr/bin/env bash
# Build the TeamBattles Go SDK. Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/go/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

# Single self-contained module (wrapper at the root + generated client in ./generated). `go mod tidy`
# materializes indirect deps + go.sum (gitignored) over the network, then we compile everything.
go mod tidy
go build ./...
