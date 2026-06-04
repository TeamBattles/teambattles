module github.com/teambattles/sdk-go

go 1.22

// The Kiota-generated client (sdks/go/src/generated) is its OWN module named `teambattles`
// (its clientNamespaceName), because Kiota's Go generator emits module-relative imports such as
// `teambattles/game` and `teambattles/models`. That generated dir is wiped on every regeneration
// (`kiota generate --clean-output`), so it cannot carry a committed go.mod; build.sh runs
// `go mod init teambattles` there before building, and the replace below points this wrapper module
// at the local generated module. The companion go.work joins both modules for `go build ./...`.
require teambattles v0.0.0

replace teambattles => ./src/generated

require (
	github.com/microsoft/kiota-abstractions-go v1.9.4
	github.com/microsoft/kiota-http-go v1.5.4
	github.com/microsoft/kiota-serialization-form-go v1.1.1
	github.com/microsoft/kiota-serialization-json-go v1.1.0
	github.com/microsoft/kiota-serialization-multipart-go v1.1.0
	github.com/microsoft/kiota-serialization-text-go v1.1.0
)
