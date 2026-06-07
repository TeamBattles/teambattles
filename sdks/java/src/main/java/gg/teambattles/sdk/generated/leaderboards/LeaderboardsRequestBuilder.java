package gg.teambattles.sdk.generated.leaderboards;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leaderboards.organizations.OrganizationsRequestBuilder;
import gg.teambattles.sdk.generated.leaderboards.players.PlayersRequestBuilder;
import gg.teambattles.sdk.generated.leaderboards.teams.TeamsRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leaderboards
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class LeaderboardsRequestBuilder extends BaseRequestBuilder {
    /**
     * The organizations property
     * @return a {@link OrganizationsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OrganizationsRequestBuilder organizations() {
        return new OrganizationsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The players property
     * @return a {@link PlayersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public PlayersRequestBuilder players() {
        return new PlayersRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The teams property
     * @return a {@link TeamsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TeamsRequestBuilder teams() {
        return new TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link LeaderboardsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public LeaderboardsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leaderboards", pathParameters);
    }
    /**
     * Instantiates a new {@link LeaderboardsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public LeaderboardsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leaderboards", rawUrl);
    }
}
