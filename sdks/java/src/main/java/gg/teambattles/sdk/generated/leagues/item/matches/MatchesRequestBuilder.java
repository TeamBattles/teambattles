package gg.teambattles.sdk.generated.leagues.item.matches;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.matches.batchscores.BatchScoresRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.matches.item.WithMatchItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchesRequestBuilder extends BaseRequestBuilder {
    /**
     * The batchScores property
     * @return a {@link BatchScoresRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public BatchScoresRequestBuilder batchScores() {
        return new BatchScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Gets an item from the gg.teambattles.sdk.generated.leagues.item.matches.item collection
     * @param matchId Match ID.
     * @return a {@link WithMatchItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithMatchItemRequestBuilder byMatchId(@jakarta.annotation.Nonnull final String matchId) {
        Objects.requireNonNull(matchId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("matchId", matchId);
        return new WithMatchItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link MatchesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MatchesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches", pathParameters);
    }
    /**
     * Instantiates a new {@link MatchesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MatchesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches", rawUrl);
    }
}
