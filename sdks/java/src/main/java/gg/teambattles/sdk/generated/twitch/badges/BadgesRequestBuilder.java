package gg.teambattles.sdk.generated.twitch.badges;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.twitch.badges.channel.ChannelRequestBuilder;
import gg.teambattles.sdk.generated.twitch.badges.global.GlobalRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /twitch/badges
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class BadgesRequestBuilder extends BaseRequestBuilder {
    /**
     * The channel property
     * @return a {@link ChannelRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ChannelRequestBuilder channel() {
        return new ChannelRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The global property
     * @return a {@link GlobalRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public GlobalRequestBuilder global() {
        return new GlobalRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link BadgesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public BadgesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/badges", pathParameters);
    }
    /**
     * Instantiates a new {@link BadgesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public BadgesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/badges", rawUrl);
    }
}
