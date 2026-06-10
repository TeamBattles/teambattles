package gg.teambattles.sdk.generated.leaderboards.organizations.item.rank;

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
import gg.teambattles.sdk.generated.models.LeaderboardRankResponse;
import gg.teambattles.sdk.generated.models.LeaderboardSortBy;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leaderboards/organizations/{identifier}/rank
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RankRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RankRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RankRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leaderboards/organizations/{identifier}/rank{?gameSlug*,sortBy*}", pathParameters);
    }
    /**
     * Instantiates a new {@link RankRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RankRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leaderboards/organizations/{identifier}/rank{?gameSlug*,sortBy*}", rawUrl);
    }
    /**
     * Returns an organization&apos;s 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game&apos;s stats only; omit it for the global all-games rank. Organization stats are aggregated from the org&apos;s active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
     * @return a {@link LeaderboardRankResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public LeaderboardRankResponse get() {
        return get(null);
    }
    /**
     * Returns an organization&apos;s 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game&apos;s stats only; omit it for the global all-games rank. Organization stats are aggregated from the org&apos;s active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link LeaderboardRankResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public LeaderboardRankResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, LeaderboardRankResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns an organization&apos;s 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game&apos;s stats only; omit it for the global all-games rank. Organization stats are aggregated from the org&apos;s active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns an organization&apos;s 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game&apos;s stats only; omit it for the global all-games rank. Organization stats are aggregated from the org&apos;s active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
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
     * @return a {@link RankRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RankRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new RankRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Returns an organization&apos;s 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game&apos;s stats only; omit it for the global all-games rank. Organization stats are aggregated from the org&apos;s active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetQueryParameters implements QueryParameters {
        @jakarta.annotation.Nullable
        public String gameSlug;
        @jakarta.annotation.Nullable
        public LeaderboardSortBy sortBy;
        /**
         * Extracts the query parameters into a map for the URI template parsing.
         * @return a {@link Map<String, Object>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, Object> toQueryParameters() {
            final Map<String, Object> allQueryParams = new HashMap();
            allQueryParams.put("sortBy", sortBy);
            allQueryParams.put("gameSlug", gameSlug);
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
