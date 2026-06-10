package gg.teambattles.sdk.generated.orgs.discover;

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
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /orgs/discover
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class DiscoverRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link DiscoverRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public DiscoverRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/orgs/discover{?limit*,search*}", pathParameters);
    }
    /**
     * Instantiates a new {@link DiscoverRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public DiscoverRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/orgs/discover{?limit*,search*}", rawUrl);
    }
    /**
     * Returns a neutral, ranked discovery list of active, public, non-disabled organizations. Each result is a small summary (id, slug, name, tag, avatarUrl, visibility); `count` is the size of the returned page, not a total. Results are sorted featured organizations first, then by most wins, then newest. `limit` is 1-100 (default 50); ranking is computed over at most the first 1000 candidate organizations and there is no cursor pagination, so the response is a single ranked page. `search` filters by case-insensitive name substring and is only applied when it is at least 2 characters (shorter values are ignored). Unlike an in-app feed, results do not exclude organizations the API key owner belongs to and do not include membership or join-request flags. Requires orgs.profile:read.
     * @return a {@link DiscoverGetResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public DiscoverGetResponse get() {
        return get(null);
    }
    /**
     * Returns a neutral, ranked discovery list of active, public, non-disabled organizations. Each result is a small summary (id, slug, name, tag, avatarUrl, visibility); `count` is the size of the returned page, not a total. Results are sorted featured organizations first, then by most wins, then newest. `limit` is 1-100 (default 50); ranking is computed over at most the first 1000 candidate organizations and there is no cursor pagination, so the response is a single ranked page. `search` filters by case-insensitive name substring and is only applied when it is at least 2 characters (shorter values are ignored). Unlike an in-app feed, results do not exclude organizations the API key owner belongs to and do not include membership or join-request flags. Requires orgs.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link DiscoverGetResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public DiscoverGetResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, DiscoverGetResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns a neutral, ranked discovery list of active, public, non-disabled organizations. Each result is a small summary (id, slug, name, tag, avatarUrl, visibility); `count` is the size of the returned page, not a total. Results are sorted featured organizations first, then by most wins, then newest. `limit` is 1-100 (default 50); ranking is computed over at most the first 1000 candidate organizations and there is no cursor pagination, so the response is a single ranked page. `search` filters by case-insensitive name substring and is only applied when it is at least 2 characters (shorter values are ignored). Unlike an in-app feed, results do not exclude organizations the API key owner belongs to and do not include membership or join-request flags. Requires orgs.profile:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns a neutral, ranked discovery list of active, public, non-disabled organizations. Each result is a small summary (id, slug, name, tag, avatarUrl, visibility); `count` is the size of the returned page, not a total. Results are sorted featured organizations first, then by most wins, then newest. `limit` is 1-100 (default 50); ranking is computed over at most the first 1000 candidate organizations and there is no cursor pagination, so the response is a single ranked page. `search` filters by case-insensitive name substring and is only applied when it is at least 2 characters (shorter values are ignored). Unlike an in-app feed, results do not exclude organizations the API key owner belongs to and do not include membership or join-request flags. Requires orgs.profile:read.
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
     * @return a {@link DiscoverRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DiscoverRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new DiscoverRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Returns a neutral, ranked discovery list of active, public, non-disabled organizations. Each result is a small summary (id, slug, name, tag, avatarUrl, visibility); `count` is the size of the returned page, not a total. Results are sorted featured organizations first, then by most wins, then newest. `limit` is 1-100 (default 50); ranking is computed over at most the first 1000 candidate organizations and there is no cursor pagination, so the response is a single ranked page. `search` filters by case-insensitive name substring and is only applied when it is at least 2 characters (shorter values are ignored). Unlike an in-app feed, results do not exclude organizations the API key owner belongs to and do not include membership or join-request flags. Requires orgs.profile:read.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetQueryParameters implements QueryParameters {
        @jakarta.annotation.Nullable
        public Integer limit;
        /**
         * Optional organization name search.
         */
        @jakarta.annotation.Nullable
        public String search;
        /**
         * Extracts the query parameters into a map for the URI template parsing.
         * @return a {@link Map<String, Object>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, Object> toQueryParameters() {
            final Map<String, Object> allQueryParams = new HashMap();
            allQueryParams.put("limit", limit);
            allQueryParams.put("search", search);
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
