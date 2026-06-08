package gg.teambattles.sdk.generated.leagues.item.teams.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.teams.item.approve.ApproveRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.teams.item.deny.DenyRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.teams.item.remove.RemoveRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams/{leagueTeamId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithLeagueTeamItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The approve property
     * @return a {@link ApproveRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ApproveRequestBuilder approve() {
        return new ApproveRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The deny property
     * @return a {@link DenyRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DenyRequestBuilder deny() {
        return new DenyRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The remove property
     * @return a {@link RemoveRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RemoveRequestBuilder remove() {
        return new RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithLeagueTeamItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithLeagueTeamItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithLeagueTeamItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithLeagueTeamItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}", rawUrl);
    }
}
