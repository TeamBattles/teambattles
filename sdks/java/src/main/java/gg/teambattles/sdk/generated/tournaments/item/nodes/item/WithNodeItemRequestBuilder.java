package gg.teambattles.sdk.generated.tournaments.item.nodes.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.nodes.item.overrideresult.OverrideResultRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.nodes.item.revertresult.RevertResultRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/nodes/{nodeId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithNodeItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The overrideResult property
     * @return a {@link OverrideResultRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OverrideResultRequestBuilder overrideResult() {
        return new OverrideResultRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The revertResult property
     * @return a {@link RevertResultRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RevertResultRequestBuilder revertResult() {
        return new RevertResultRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithNodeItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithNodeItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithNodeItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithNodeItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}", rawUrl);
    }
}
