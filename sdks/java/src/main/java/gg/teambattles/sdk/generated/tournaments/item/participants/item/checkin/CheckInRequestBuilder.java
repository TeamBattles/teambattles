package gg.teambattles.sdk.generated.tournaments.item.participants.item.checkin;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentWriteAck;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/check-in
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CheckInRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link CheckInRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public CheckInRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/check-in", pathParameters);
    }
    /**
     * Instantiates a new {@link CheckInRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public CheckInRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/check-in", rawUrl);
    }
    /**
     * Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no &apos;already checked in&apos; conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post() {
        return post(null);
    }
    /**
     * Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no &apos;already checked in&apos; conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toPostRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentWriteAck::createFromDiscriminatorValue);
    }
    /**
     * Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no &apos;already checked in&apos; conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no &apos;already checked in&apos; conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.POST, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PostRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link CheckInRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CheckInRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new CheckInRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
