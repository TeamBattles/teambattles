// Hand-written convenience wrapper for the TeamBattles Java SDK.
//
// Lives in the parent package gg.teambattles.sdk, OUTSIDE the Kiota output package
// gg.teambattles.sdk.generated, so a `kiota client generate --clean-output` regeneration never wipes it.
//
// Reconciled against the committed Kiota output: gg.teambattles.sdk.generated.TeamBattlesApiClient is a
// CLASS whose sole constructor takes a com.microsoft.kiota.RequestAdapter, i.e. new TeamBattlesApiClient(adapter).
package gg.teambattles.sdk;

import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.authentication.AccessTokenProvider;
import com.microsoft.kiota.authentication.AllowedHostsValidator;
import com.microsoft.kiota.authentication.BaseBearerTokenAuthenticationProvider;
import com.microsoft.kiota.http.OkHttpRequestAdapter;
import gg.teambattles.sdk.generated.TeamBattlesApiClient;

import java.net.URI;
import java.util.Map;

/** Factory helpers for constructing a fully-wired {@link TeamBattlesApiClient}. */
public final class TeamBattlesClientFactory {

    private static final String DEFAULT_BASE_URL = "https://teambattles.gg/api/v1";

    private TeamBattlesClientFactory() {}

    /**
     * Create a fully-wired TeamBattles API client against the production base URL.
     *
     * @param apiKey your TeamBattles API key (e.g. {@code tb_...}); sent as {@code Authorization: Bearer <apiKey>}
     * @return a ready-to-use API client
     */
    public static TeamBattlesApiClient create(final String apiKey) {
        return create(apiKey, DEFAULT_BASE_URL);
    }

    /**
     * Create a fully-wired TeamBattles API client against a custom base URL.
     *
     * @param apiKey  your TeamBattles API key (e.g. {@code tb_...})
     * @param baseUrl the API base URL to target
     * @return a ready-to-use API client
     */
    public static TeamBattlesApiClient create(final String apiKey, final String baseUrl) {
        final String host = URI.create(baseUrl).getHost();
        final AccessTokenProvider tokenProvider = new StaticKeyAccessTokenProvider(apiKey, host);
        final BaseBearerTokenAuthenticationProvider authProvider =
                new BaseBearerTokenAuthenticationProvider(tokenProvider);
        final RequestAdapter adapter = new OkHttpRequestAdapter(authProvider);
        adapter.setBaseUrl(baseUrl);
        return new TeamBattlesApiClient(adapter);
    }

    /**
     * Returns the raw API key as the bearer token. The base bearer provider prepends "Bearer ",
     * matching the server's expected {@code Authorization: Bearer tb_<key>} header.
     */
    private static final class StaticKeyAccessTokenProvider implements AccessTokenProvider {
        private final String apiKey;
        private final AllowedHostsValidator validator;

        StaticKeyAccessTokenProvider(final String apiKey, final String host) {
            this.apiKey = apiKey;
            this.validator = new AllowedHostsValidator(host);
        }

        @Override
        public String getAuthorizationToken(
                final URI uri, final Map<String, Object> additionalAuthenticationContext) {
            return apiKey;
        }

        @Override
        public AllowedHostsValidator getAllowedHostsValidator() {
            return validator;
        }
    }
}
