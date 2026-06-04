package gg.teambattles.sdk.generated.twitch.badges.channel;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.QueryParameters;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TwitchChannelBadges;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /twitch/badges/channel
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ChannelRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link ChannelRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ChannelRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/badges/channel{?id*,username*}", pathParameters);
    }
    /**
     * Instantiates a new {@link ChannelRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ChannelRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/badges/channel{?id*,username*}", rawUrl);
    }
    /**
     * Returns a Twitch channel&apos;s chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @return a {@link TwitchChannelBadges}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public TwitchChannelBadges get() {
        return get(null);
    }
    /**
     * Returns a Twitch channel&apos;s chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TwitchChannelBadges}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public TwitchChannelBadges get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TwitchChannelBadges::createFromDiscriminatorValue);
    }
    /**
     * Returns a Twitch channel&apos;s chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns a Twitch channel&apos;s chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.GET, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, GetRequestConfiguration::new, x -> x.queryParameters);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link ChannelRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ChannelRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new ChannelRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Returns a Twitch channel&apos;s chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetQueryParameters implements QueryParameters {
        /**
         * Broadcaster id (e.g. 123456789). Provide exactly one of username or id.
         */
        @jakarta.annotation.Nullable
        public String id;
        /**
         * Channel login name (e.g. ninja). Provide exactly one of username or id.
         */
        @jakarta.annotation.Nullable
        public String username;
        /**
         * Extracts the query parameters into a map for the URI template parsing.
         * @return a {@link Map<String, Object>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, Object> toQueryParameters() {
            final Map<String, Object> allQueryParams = new HashMap();
            allQueryParams.put("id", id);
            allQueryParams.put("username", username);
            return allQueryParams;
        }
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
        /**
         * Request query parameters
         */
        @jakarta.annotation.Nullable
        public GetQueryParameters queryParameters = new GetQueryParameters();
    }
}
