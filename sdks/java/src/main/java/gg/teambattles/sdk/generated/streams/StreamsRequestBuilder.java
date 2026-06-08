package gg.teambattles.sdk.generated.streams;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.streams.livestatus.LiveStatusRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /streams
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class StreamsRequestBuilder extends BaseRequestBuilder {
    /**
     * The liveStatus property
     * @return a {@link LiveStatusRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public LiveStatusRequestBuilder liveStatus() {
        return new LiveStatusRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link StreamsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public StreamsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/streams", pathParameters);
    }
    /**
     * Instantiates a new {@link StreamsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public StreamsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/streams", rawUrl);
    }
}
