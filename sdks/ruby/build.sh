#!/usr/bin/env bash
# Build the TeamBattles Ruby SDK (preview language). Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/ruby/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

bundle install
gem build teambattles_sdk.gemspec
