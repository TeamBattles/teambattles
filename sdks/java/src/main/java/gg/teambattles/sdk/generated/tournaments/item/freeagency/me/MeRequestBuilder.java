package gg.teambattles.sdk.generated.tournaments.item.freeagency.me;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentFreeAgencyJoinBody;
import gg.teambattles.sdk.generated.models.TournamentWriteAck;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/me
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MeRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link MeRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MeRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/me", pathParameters);
    }
    /**
     * Instantiates a new {@link MeRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MeRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/me", rawUrl);
    }
    /**
     * Withdraws the API key owner from a tournament&apos;s free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team&apos;s offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck delete() {
        return delete(null);
    }
    /**
     * Withdraws the API key owner from a tournament&apos;s free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team&apos;s offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
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
    public TournamentWriteAck delete(@jakarta.annotation.Nullable final java.util.function.Consumer<DeleteRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toDeleteRequestInformation(requestConfiguration);
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
     * Adds the API key owner to a tournament&apos;s solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally &apos;me&apos; - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament&apos;s game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team&apos;s roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
     * @param body Free-agent pool listing payload for the API key owner.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentFreeAgencyJoinBody body) {
        return post(body, null);
    }
    /**
     * Adds the API key owner to a tournament&apos;s solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally &apos;me&apos; - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament&apos;s game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team&apos;s roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
     * @param body Free-agent pool listing payload for the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentFreeAgencyJoinBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentWriteAck::createFromDiscriminatorValue);
    }
    /**
     * Withdraws the API key owner from a tournament&apos;s free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team&apos;s offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toDeleteRequestInformation() {
        return toDeleteRequestInformation(null);
    }
    /**
     * Withdraws the API key owner from a tournament&apos;s free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team&apos;s offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toDeleteRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<DeleteRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.DELETE, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, DeleteRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Adds the API key owner to a tournament&apos;s solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally &apos;me&apos; - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament&apos;s game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team&apos;s roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
     * @param body Free-agent pool listing payload for the API key owner.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentFreeAgencyJoinBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Adds the API key owner to a tournament&apos;s solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally &apos;me&apos; - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament&apos;s game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team&apos;s roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
     * @param body Free-agent pool listing payload for the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentFreeAgencyJoinBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link MeRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MeRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new MeRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class DeleteRequestConfiguration extends BaseRequestConfiguration {
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
