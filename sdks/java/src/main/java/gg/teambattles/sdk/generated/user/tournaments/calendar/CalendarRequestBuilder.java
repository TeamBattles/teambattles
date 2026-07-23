package gg.teambattles.sdk.generated.user.tournaments.calendar;

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
import gg.teambattles.sdk.generated.models.TournamentCalendarResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /user/tournaments/calendar
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CalendarRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link CalendarRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public CalendarRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user/tournaments/calendar{?rangeEnd*,rangeStart*}", pathParameters);
    }
    /**
     * Instantiates a new {@link CalendarRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public CalendarRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user/tournaments/calendar{?rangeEnd*,rangeStart*}", rawUrl);
    }
    /**
     * Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner&apos;s teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
     * @return a {@link TournamentCalendarResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentCalendarResponse get() {
        return get(null);
    }
    /**
     * Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner&apos;s teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentCalendarResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentCalendarResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentCalendarResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner&apos;s teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner&apos;s teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
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
     * @return a {@link CalendarRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CalendarRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new CalendarRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Returns registration-deadline, check-in-opening, and tournament-start milestones for tournaments the API key owner&apos;s teams are entered in. Cancelled tournaments are omitted, and scheduled tournament matches are not included here - they surface through the match endpoints. Defaults to the next 30 days when no window is given. Requires tournaments.tournament_public:read.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetQueryParameters implements QueryParameters {
        /**
         * Window end, ISO 8601. Defaults to 30 days after `rangeStart`.
         */
        @jakarta.annotation.Nullable
        public String rangeEnd;
        /**
         * Window start, ISO 8601. Defaults to the time of the request.
         */
        @jakarta.annotation.Nullable
        public String rangeStart;
        /**
         * Extracts the query parameters into a map for the URI template parsing.
         * @return a {@link Map<String, Object>}
         */
        @jakarta.annotation.Nonnull
        public Map<String, Object> toQueryParameters() {
            final Map<String, Object> allQueryParams = new HashMap();
            allQueryParams.put("rangeEnd", rangeEnd);
            allQueryParams.put("rangeStart", rangeStart);
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
