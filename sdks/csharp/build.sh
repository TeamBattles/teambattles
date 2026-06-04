#!/usr/bin/env bash
# Build the TeamBattles C# SDK. Invoked by .github/workflows/sdks.yml (sdk-build job)
# as `bash sdks/csharp/build.sh` from the repo root, so we cd into our own directory.
set -e
cd "$(dirname "$0")"

dotnet build TeamBattles.Sdk.csproj -c Release
