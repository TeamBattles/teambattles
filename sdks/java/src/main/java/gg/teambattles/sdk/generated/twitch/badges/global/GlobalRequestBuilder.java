package gg.teambattles.sdk.generated.twitch.badges.global;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TwitchGlobalBadges;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /twitch/badges/global
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GlobalRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link GlobalRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public GlobalRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/badges/global", pathParameters);
    }
    /**
     * Instantiates a new {@link GlobalRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public GlobalRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/badges/global", rawUrl);
    }
    /**
     * Returns Twitch&apos;s global chat badge sets. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @return a {@link TwitchGlobalBadges}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     */
    @jakarta.annotation.Nullable
    public TwitchGlobalBadges get() {
        return get(null);
    }
    /**
     * Returns Twitch&apos;s global chat badge sets. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TwitchGlobalBadges}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     */
    @jakarta.annotation.Nullable
    public TwitchGlobalBadges get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TwitchGlobalBadges::createFromDiscriminatorValue);
    }
    /**
     * Returns Twitch&apos;s global chat badge sets. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns Twitch&apos;s global chat badge sets. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.GET, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, GetRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link GlobalRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public GlobalRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new GlobalRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
}
