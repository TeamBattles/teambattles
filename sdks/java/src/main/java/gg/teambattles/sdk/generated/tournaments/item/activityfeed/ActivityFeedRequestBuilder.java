package gg.teambattles.sdk.generated.tournaments.item.activityfeed;

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
import gg.teambattles.sdk.generated.models.TournamentActivityFeedResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/activity-feed
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class ActivityFeedRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link ActivityFeedRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ActivityFeedRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/activity-feed{?limit*}", pathParameters);
    }
    /**
     * Instantiates a new {@link ActivityFeedRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public ActivityFeedRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/activity-feed{?limit*}", rawUrl);
    }
    /**
     * Returns the tournament&apos;s organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @return a {@link TournamentActivityFeedResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentActivityFeedResponse get() {
        return get(null);
    }
    /**
     * Returns the tournament&apos;s organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentActivityFeedResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentActivityFeedResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentActivityFeedResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns the tournament&apos;s organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns the tournament&apos;s organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
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
     * @return a {@link ActivityFeedRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ActivityFeedRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new ActivityFeedRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Returns the tournament&apos;s organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetQueryParameters implements QueryParameters {
        /**
         * Maximum entries to return, 1-100. Defaults to 50.
         */
        @jakarta.annotation.Nullable
        public Integer limit;
        /**
         * Extracts the query parameters into a map for the URI template parsing.
         * @return a {@link Map<String, Object>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, Object> toQueryParameters() {
            final Map<String, Object> allQueryParams = new HashMap();
            allQueryParams.put("limit", limit);
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
