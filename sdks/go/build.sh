#!/usr/bin/env bash
# Build the TeamBattles Go SDK. Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/go/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

# The Kiota-generated client (src/generated) emits module-relative imports (`teambattles/game`,
# `teambattles/models`, ...), so it must be its own module literally named `teambattles`. Kiota wipes
# that dir on every regeneration (`kiota generate --clean-output`), so its go.mod is NOT committed - we
# materialize it here, idempotently, before building. go.work then joins it to the wrapper module so
# `go build ./...` resolves the local generated package without a network fetch.
if [ ! -f src/generated/go.mod ]; then
	(cd src/generated && go mod init teambattles)
fi

go work sync
go mod tidy
(cd src/generated && go mod tidy)
go build ./...
