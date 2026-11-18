package gg.teambattles.sdk.generated.twitch.streams;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.twitch.streams.history.HistoryRequestBuilder;
import gg.teambattles.sdk.generated.twitch.streams.signals.SignalsRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /twitch/streams
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class StreamsRequestBuilder extends BaseRequestBuilder {
    /**
     * The history property
     * @return a {@link HistoryRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public HistoryRequestBuilder history() {
        return new HistoryRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The signals property
     * @return a {@link SignalsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public SignalsRequestBuilder signals() {
        return new SignalsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link StreamsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public StreamsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/streams", pathParameters);
    }
    /**
     * Instantiates a new {@link StreamsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public StreamsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/streams", rawUrl);
    }
}
