package gg.teambattles.sdk.generated.tournaments.item.nodes;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.nodes.item.WithNodeItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/nodes
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class NodesRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.tournaments.item.nodes.item collection
     * @param nodeId Bracket node ID.
     * @return a {@link WithNodeItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithNodeItemRequestBuilder byNodeId(@jakarta.annotation.Nonnull final String nodeId) {
        Objects.requireNonNull(nodeId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("nodeId", nodeId);
        return new WithNodeItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link NodesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public NodesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes", pathParameters);
    }
    /**
     * Instantiates a new {@link NodesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public NodesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes", rawUrl);
    }
}
