#!/usr/bin/env bash
# Build the TeamBattles Dart SDK (preview language). Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/dart/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

dart pub get
dart analyze
