package gg.teambattles.sdk.generated.tournaments.item.invites.item.respond;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentInviteRespondBody;
import gg.teambattles.sdk.generated.models.TournamentInviteRespondResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/invites/{inviteId}/respond
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RespondRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RespondRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RespondRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}/respond", pathParameters);
    }
    /**
     * Instantiates a new {@link RespondRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RespondRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}/respond", rawUrl);
    }
    /**
     * Answers an organizer&apos;s invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry&apos;s full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament&apos;s teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
     * @param body Captain response to a tournament invite.
     * @return a {@link TournamentInviteRespondResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentInviteRespondResponse post(@jakarta.annotation.Nonnull final TournamentInviteRespondBody body) {
        return post(body, null);
    }
    /**
     * Answers an organizer&apos;s invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry&apos;s full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament&apos;s teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
     * @param body Captain response to a tournament invite.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentInviteRespondResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentInviteRespondResponse post(@jakarta.annotation.Nonnull final TournamentInviteRespondBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("409", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentInviteRespondResponse::createFromDiscriminatorValue);
    }
    /**
     * Answers an organizer&apos;s invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry&apos;s full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament&apos;s teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
     * @param body Captain response to a tournament invite.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentInviteRespondBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Answers an organizer&apos;s invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry&apos;s full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament&apos;s teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
     * @param body Captain response to a tournament invite.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentInviteRespondBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link RespondRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RespondRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new RespondRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
