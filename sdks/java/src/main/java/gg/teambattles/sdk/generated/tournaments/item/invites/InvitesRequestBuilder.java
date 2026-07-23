package gg.teambattles.sdk.generated.tournaments.item.invites;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentInvitesResponse;
import gg.teambattles.sdk.generated.models.TournamentInviteTeamBody;
import gg.teambattles.sdk.generated.models.TournamentWriteAck;
import gg.teambattles.sdk.generated.tournaments.item.invites.item.WithInviteItemRequestBuilder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/invites
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class InvitesRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.tournaments.item.invites.item collection
     * @param inviteId Tournament invite ID, as returned by GET /tournaments/{identifier}/me for a team you lead.
     * @return a {@link WithInviteItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithInviteItemRequestBuilder byInviteId(@jakarta.annotation.Nonnull final String inviteId) {
        Objects.requireNonNull(inviteId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("inviteId", inviteId);
        return new WithInviteItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link InvitesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public InvitesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites", pathParameters);
    }
    /**
     * Instantiates a new {@link InvitesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public InvitesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites", rawUrl);
    }
    /**
     * Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team&apos;s existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @return a {@link TournamentInvitesResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentInvitesResponse get() {
        return get(null);
    }
    /**
     * Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team&apos;s existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentInvitesResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentInvitesResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentInvitesResponse::createFromDiscriminatorValue);
    }
    /**
     * Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team&apos;s existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
     * @param body Tournament team invitation payload.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentInviteTeamBody body) {
        return post(body, null);
    }
    /**
     * Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team&apos;s existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
     * @param body Tournament team invitation payload.
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
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentInviteTeamBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team&apos;s existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team&apos;s existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER&apos;s personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.GET, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, GetRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team&apos;s existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
     * @param body Tournament team invitation payload.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentInviteTeamBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team&apos;s existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
     * @param body Tournament team invitation payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentInviteTeamBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link InvitesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public InvitesRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new InvitesRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
