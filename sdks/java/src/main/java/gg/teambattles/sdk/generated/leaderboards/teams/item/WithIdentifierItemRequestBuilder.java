package gg.teambattles.sdk.generated.leaderboards.teams.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leaderboards.teams.item.rank.RankRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leaderboards/teams/{identifier}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithIdentifierItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The rank property
     * @return a {@link RankRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RankRequestBuilder rank() {
        return new RankRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithIdentifierItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithIdentifierItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leaderboards/teams/{identifier}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithIdentifierItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithIdentifierItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leaderboards/teams/{identifier}", rawUrl);
    }
}
