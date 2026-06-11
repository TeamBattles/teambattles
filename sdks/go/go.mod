module github.com/teambattles/sdk-go

go 1.22

// Single self-contained module: the Kiota-generated client lives in ./generated (package
// `github.com/teambattles/sdk-go/generated`) as a normal subpackage of this module, so consumers can
// `go get github.com/teambattles/sdk-go` with no `replace`/`go.work` (those only apply to the main
// module, never to a dependency). Indirect deps + go.sum are materialized by build.sh (`go mod tidy`).
require (
	github.com/microsoft/kiota-abstractions-go v1.9.4
	github.com/microsoft/kiota-http-go v1.5.4
	github.com/microsoft/kiota-serialization-form-go v1.1.1
	github.com/microsoft/kiota-serialization-json-go v1.1.0
	github.com/microsoft/kiota-serialization-multipart-go v1.1.0
	github.com/microsoft/kiota-serialization-text-go v1.1.0
)
