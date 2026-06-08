package gg.teambattles.sdk.generated.leagues.item.teams;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.teams.item.WithLeagueTeamItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TeamsRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.leagues.item.teams.item collection
     * @param leagueTeamId League team application ID.
     * @return a {@link WithLeagueTeamItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithLeagueTeamItemRequestBuilder byLeagueTeamId(@jakarta.annotation.Nonnull final String leagueTeamId) {
        Objects.requireNonNull(leagueTeamId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("leagueTeamId", leagueTeamId);
        return new WithLeagueTeamItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link TeamsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TeamsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams", pathParameters);
    }
    /**
     * Instantiates a new {@link TeamsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TeamsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams", rawUrl);
    }
}
