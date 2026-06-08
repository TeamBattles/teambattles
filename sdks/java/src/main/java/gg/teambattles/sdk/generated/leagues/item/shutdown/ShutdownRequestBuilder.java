package gg.teambattles.sdk.generated.leagues.item.shutdown;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.shutdown.request.RequestRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/shutdown
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ShutdownRequestBuilder extends BaseRequestBuilder {
    /**
     * The request property
     * @return a {@link RequestRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RequestRequestBuilder request() {
        return new RequestRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link ShutdownRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ShutdownRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/shutdown", pathParameters);
    }
    /**
     * Instantiates a new {@link ShutdownRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ShutdownRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/shutdown", rawUrl);
    }
}
