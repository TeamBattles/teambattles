package gg.teambattles.sdk.generated.tournaments.item.participants.item.withdraw;

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
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/withdraw
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithdrawRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link WithdrawRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithdrawRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/withdraw", pathParameters);
    }
    /**
     * Instantiates a new {@link WithdrawRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithdrawRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/withdraw", rawUrl);
    }
    /**
     * Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team&apos;s outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL&apos;s tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer&apos;s counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
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
     * Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team&apos;s outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL&apos;s tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer&apos;s counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
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
     * Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team&apos;s outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL&apos;s tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer&apos;s counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team&apos;s outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL&apos;s tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer&apos;s counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
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
     * @return a {@link WithdrawRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithdrawRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new WithdrawRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
