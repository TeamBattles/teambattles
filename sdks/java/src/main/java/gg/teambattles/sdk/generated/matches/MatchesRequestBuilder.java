package gg.teambattles.sdk.generated.matches;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.matches.create.CreateRequestBuilder;
import gg.teambattles.sdk.generated.matches.discover.DiscoverRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.WithMatchItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /matches
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchesRequestBuilder extends BaseRequestBuilder {
    /**
     * The create property
     * @return a {@link CreateRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CreateRequestBuilder create() {
        return new CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The discover property
     * @return a {@link DiscoverRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DiscoverRequestBuilder discover() {
        return new DiscoverRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Gets an item from the gg.teambattles.sdk.generated.matches.item collection
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
        super(requestAdapter, "{+baseurl}/matches", pathParameters);
    }
    /**
     * Instantiates a new {@link MatchesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MatchesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches", rawUrl);
    }
}
