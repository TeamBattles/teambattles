package gg.teambattles.sdk.generated.twitch;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.twitch.badges.BadgesRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /twitch
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TwitchRequestBuilder extends BaseRequestBuilder {
    /**
     * The badges property
     * @return a {@link BadgesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public BadgesRequestBuilder badges() {
        return new BadgesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link TwitchRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TwitchRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch", pathParameters);
    }
    /**
     * Instantiates a new {@link TwitchRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TwitchRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch", rawUrl);
    }
}
