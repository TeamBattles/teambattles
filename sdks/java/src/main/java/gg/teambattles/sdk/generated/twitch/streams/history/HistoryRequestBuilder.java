package gg.teambattles.sdk.generated.twitch.streams.history;

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
import gg.teambattles.sdk.generated.models.TwitchStreamHistory;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /twitch/streams/history
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class HistoryRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link HistoryRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public HistoryRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/streams/history{?id*,username*}", pathParameters);
    }
    /**
     * Instantiates a new {@link HistoryRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public HistoryRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/twitch/streams/history{?id*,username*}", rawUrl);
    }
    /**
     * Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
     * @return a {@link TwitchStreamHistory}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 503 status code
     */
    @jakarta.annotation.Nullable
    public TwitchStreamHistory get() {
        return get(null);
    }
    /**
     * Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TwitchStreamHistory}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 503 status code
     */
    @jakarta.annotation.Nullable
    public TwitchStreamHistory get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("503", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TwitchStreamHistory::createFromDiscriminatorValue);
    }
    /**
     * Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
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
     * @return a {@link HistoryRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public HistoryRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new HistoryRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetQueryParameters implements QueryParameters {
        /**
         * Twitch user id (e.g. 71092938). Provide exactly one of username or id.
         */
        @jakarta.annotation.Nullable
        public String id;
        /**
         * Channel login (e.g. xqc). Provide exactly one of username or id.
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
