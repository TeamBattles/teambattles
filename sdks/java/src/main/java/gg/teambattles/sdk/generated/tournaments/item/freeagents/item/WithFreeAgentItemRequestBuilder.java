package gg.teambattles.sdk.generated.tournaments.item.freeagents.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.freeagents.item.offers.OffersRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.freeagents.item.remove.RemoveRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agents/{freeAgentId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithFreeAgentItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The offers property
     * @return a {@link OffersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OffersRequestBuilder offers() {
        return new OffersRequestBuilder(pathParameters, requestAdapter);
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
     * Instantiates a new {@link WithFreeAgentItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithFreeAgentItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithFreeAgentItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithFreeAgentItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}", rawUrl);
    }
}
