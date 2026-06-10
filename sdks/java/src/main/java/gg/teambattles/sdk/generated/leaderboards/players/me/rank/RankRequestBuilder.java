package gg.teambattles.sdk.generated.leaderboards.players.me.rank;

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
 * Builds and executes requests for operations under /leaderboards/players/me/rank
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RankRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RankRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RankRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leaderboards/players/me/rank{?sortBy*}", pathParameters);
    }
    /**
     * Instantiates a new {@link RankRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RankRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leaderboards/players/me/rank{?sortBy*}", rawUrl);
    }
    /**
     * Returns the API key owner&apos;s own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
     * @return a {@link LeaderboardRankResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public LeaderboardRankResponse get() {
        return get(null);
    }
    /**
     * Returns the API key owner&apos;s own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link LeaderboardRankResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
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
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, LeaderboardRankResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns the API key owner&apos;s own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns the API key owner&apos;s own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
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
     * Returns the API key owner&apos;s own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetQueryParameters implements QueryParameters {
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
