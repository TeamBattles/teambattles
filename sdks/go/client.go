// Package sdk is the hand-written convenience wrapper for the TeamBattles Go SDK.
//
// It lives at the module root (sdks/go/), OUTSIDE the Kiota output path (./src/generated), so a
// `kiota generate --clean-output` regeneration never wipes it and it does not collide with the
// generated package. Consumers import it as the module root:
//
//	import sdk "github.com/teambattles/sdk-go"
//
// The Kiota-generated client is its own module named `teambattles` (its clientNamespaceName): the Go
// generator emits module-relative imports like `teambattles/game` and `teambattles/models`, so the
// entrypoint `package teambattles` is the root of a module literally named `teambattles`. We import it
// by that module path and alias it to `generated` for readability. The wrapper go.mod replaces
// `teambattles` with the local ./src/generated dir, and go.work joins the two modules.
//
// Kiota's Go generator emits the FACTORY `NewTeamBattlesApiClient(adapter)` in that package.
package sdk

import (
	"context"
	"net/url"

	auth "github.com/microsoft/kiota-abstractions-go/authentication"
	nethttplibrary "github.com/microsoft/kiota-http-go"

	generated "teambattles"
)

// DefaultBaseURL is the production TeamBattles API base URL.
const DefaultBaseURL = "https://teambattles.gg/api/v1"

// staticKeyAccessTokenProvider returns the raw API key as the bearer token. The base bearer provider
// prepends "Bearer ", matching the server's expected `Authorization: Bearer tb_<key>` header.
//
// There is NO `auth.NewAccessTokenProvider(fn, ...)` helper in kiota-abstractions-go, so we implement the
// AccessTokenProvider interface as a hand-written struct.
type staticKeyAccessTokenProvider struct {
	apiKey    string
	validator *auth.AllowedHostsValidator
}

func (p *staticKeyAccessTokenProvider) GetAuthorizationToken(
	ctx context.Context,
	uri *url.URL,
	additionalAuthenticationContext map[string]interface{},
) (string, error) {
	return p.apiKey, nil
}

func (p *staticKeyAccessTokenProvider) GetAllowedHostsValidator() *auth.AllowedHostsValidator {
	return p.validator
}

// CreateTeamBattlesClient creates a fully-wired TeamBattles API client against the production base URL.
//
// apiKey is your TeamBattles API key (e.g. "tb_..."). It is sent as `Authorization: Bearer <apiKey>`.
func CreateTeamBattlesClient(apiKey string) (*generated.TeamBattlesApiClient, error) {
	return CreateTeamBattlesClientWithBaseURL(apiKey, DefaultBaseURL)
}

// CreateTeamBattlesClientWithBaseURL creates a fully-wired TeamBattles API client against a custom base URL.
func CreateTeamBattlesClientWithBaseURL(apiKey string, baseURL string) (*generated.TeamBattlesApiClient, error) {
	parsed, err := url.Parse(baseURL)
	if err != nil {
		return nil, err
	}

	validator := auth.NewAllowedHostsValidator([]string{parsed.Host})
	provider := &staticKeyAccessTokenProvider{apiKey: apiKey, validator: &validator}

	authProvider := auth.NewBaseBearerTokenAuthenticationProvider(provider)
	adapter, err := nethttplibrary.NewNetHttpRequestAdapter(authProvider)
	if err != nil {
		return nil, err
	}
	adapter.SetBaseUrl(baseURL)

	return generated.NewTeamBattlesApiClient(adapter), nil
}
