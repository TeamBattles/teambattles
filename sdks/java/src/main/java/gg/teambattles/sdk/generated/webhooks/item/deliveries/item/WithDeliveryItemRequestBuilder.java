package gg.teambattles.sdk.generated.webhooks.item.deliveries.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.webhooks.item.deliveries.item.replay.ReplayRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /webhooks/{id}/deliveries/{deliveryId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithDeliveryItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The replay property
     * @return a {@link ReplayRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ReplayRequestBuilder replay() {
        return new ReplayRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithDeliveryItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithDeliveryItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithDeliveryItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithDeliveryItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}", rawUrl);
    }
}
