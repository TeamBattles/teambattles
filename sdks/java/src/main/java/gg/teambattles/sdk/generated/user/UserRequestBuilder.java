package gg.teambattles.sdk.generated.user;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.user.connections.ConnectionsRequestBuilder;
import gg.teambattles.sdk.generated.user.gameranks.GameRanksRequestBuilder;
import gg.teambattles.sdk.generated.user.matches.MatchesRequestBuilder;
import gg.teambattles.sdk.generated.user.ongoingmatches.OngoingMatchesRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /user
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UserRequestBuilder extends BaseRequestBuilder {
    /**
     * The connections property
     * @return a {@link ConnectionsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ConnectionsRequestBuilder connections() {
        return new ConnectionsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The gameRanks property
     * @return a {@link GameRanksRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public GameRanksRequestBuilder gameRanks() {
        return new GameRanksRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The matches property
     * @return a {@link MatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MatchesRequestBuilder matches() {
        return new MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The ongoingMatches property
     * @return a {@link OngoingMatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OngoingMatchesRequestBuilder ongoingMatches() {
        return new OngoingMatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link UserRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public UserRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user", pathParameters);
    }
    /**
     * Instantiates a new {@link UserRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public UserRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user", rawUrl);
    }
}
