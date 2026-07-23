package gg.teambattles.sdk.generated.tournaments.item.participants.item.remove;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentRemoveParticipantBody;
import gg.teambattles.sdk.generated.models.TournamentWriteAck;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/participants/{participantId}/remove
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RemoveRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RemoveRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RemoveRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/remove", pathParameters);
    }
    /**
     * Instantiates a new {@link RemoveRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RemoveRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/remove", rawUrl);
    }
    /**
     * Sets the participant to REMOVED, decrementing the participant count if the team was APPROVED. Side effects a client should expect: the team&apos;s outbound free-agent offers are expired and the free agents it had picked up are released back to the pool. Unlike disqualification this does NOT propagate through a live bracket. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies.
     * @param body Participant removal payload.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentRemoveParticipantBody body) {
        return post(body, null);
    }
    /**
     * Sets the participant to REMOVED, decrementing the participant count if the team was APPROVED. Side effects a client should expect: the team&apos;s outbound free-agent offers are expired and the free agents it had picked up are released back to the pool. Unlike disqualification this does NOT propagate through a live bracket. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies.
     * @param body Participant removal payload.
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
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentRemoveParticipantBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
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
     * Sets the participant to REMOVED, decrementing the participant count if the team was APPROVED. Side effects a client should expect: the team&apos;s outbound free-agent offers are expired and the free agents it had picked up are released back to the pool. Unlike disqualification this does NOT propagate through a live bracket. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies.
     * @param body Participant removal payload.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentRemoveParticipantBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Sets the participant to REMOVED, decrementing the participant count if the team was APPROVED. Side effects a client should expect: the team&apos;s outbound free-agent offers are expired and the free agents it had picked up are released back to the pool. Unlike disqualification this does NOT propagate through a live bracket. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies.
     * @param body Participant removal payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentRemoveParticipantBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.POST, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PostRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link RemoveRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RemoveRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new RemoveRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
