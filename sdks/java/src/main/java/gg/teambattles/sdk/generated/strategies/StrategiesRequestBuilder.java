package gg.teambattles.sdk.generated.strategies;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.strategies.item.WithSlugItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /strategies
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class StrategiesRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.strategies.item collection
     * @param slug Strategy public share slug.
     * @return a {@link WithSlugItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithSlugItemRequestBuilder bySlug(@jakarta.annotation.Nonnull final String slug) {
        Objects.requireNonNull(slug);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("slug", slug);
        return new WithSlugItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link StrategiesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public StrategiesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/strategies", pathParameters);
    }
    /**
     * Instantiates a new {@link StrategiesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public StrategiesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/strategies", rawUrl);
    }
}
