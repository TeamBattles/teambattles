package gg.teambattles.sdk.generated.tournaments.item.rounds;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.rounds.item.WithRoundItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/rounds
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RoundsRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.tournaments.item.rounds.item collection
     * @param roundId Tournament round id.
     * @return a {@link WithRoundItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithRoundItemRequestBuilder byRoundId(@jakarta.annotation.Nonnull final String roundId) {
        Objects.requireNonNull(roundId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("roundId", roundId);
        return new WithRoundItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link RoundsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RoundsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/rounds", pathParameters);
    }
    /**
     * Instantiates a new {@link RoundsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RoundsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/rounds", rawUrl);
    }
}
