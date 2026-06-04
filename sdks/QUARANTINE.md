# Quarantined SDK targets

Preview-language SDKs (TypeScript, Dart, Ruby) that currently fail to generate or build are listed
here with a reason. The `sdk-build` CI job treats a preview-language build failure as **non-fatal only
if** the language appears in this table; otherwise the job fails. Stable languages (C#, Go, Java, PHP,
Python) are never quarantined - a stable build failure always fails CI.

To quarantine a language: add a row (reviewed in a PR), link a tracking issue, and note the blocker.
To un-quarantine: remove the row once the build is green.

| Language | Reason | Since | Tracking issue |
| -------- | ------ | ----- | -------------- |

_No languages are quarantined._
