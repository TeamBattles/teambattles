#!/usr/bin/env bash
# Build the TeamBattles Java SDK. Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/java/build.sh` from the repo root, so we cd into our own directory.
#
# Uses the Gradle wrapper if one is committed; otherwise falls back to a system `gradle`.
# (No wrapper jar is committed by hand - the CI runner provides a Gradle distribution.)
set -e
cd "$(dirname "$0")"

if [ -x "./gradlew" ]; then
  ./gradlew --no-daemon build
else
  gradle --no-daemon build
fi
