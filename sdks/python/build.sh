#!/usr/bin/env bash
# Build the TeamBattles Python SDK. Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/python/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

python -m pip install --upgrade pip
pip install .
