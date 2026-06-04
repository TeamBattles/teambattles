#!/usr/bin/env bash
# Build the TeamBattles PHP SDK. Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/php/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

composer install --no-interaction --no-progress
# Validate that the wrapper + generated sources parse and autoload resolves.
composer dump-autoload --optimize
