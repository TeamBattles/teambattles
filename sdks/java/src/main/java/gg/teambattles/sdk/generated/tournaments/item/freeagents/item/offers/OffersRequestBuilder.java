package gg.teambattles.sdk.generated.tournaments.item.freeagents.item.offers;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentSendOfferBody;
import gg.teambattles.sdk.generated.models.TournamentWriteAck;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agents/{freeAgentId}/offers
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class OffersRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link OffersRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OffersRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/offers", pathParameters);
    }
    /**
     * Instantiates a new {@link OffersRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OffersRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/offers", rawUrl);
    }
    /**
     * Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament&apos;s pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
     * @param body Free-agent pickup offer payload.
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
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentSendOfferBody body) {
        return post(body, null);
    }
    /**
     * Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament&apos;s pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
     * @param body Free-agent pickup offer payload.
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
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentSendOfferBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament&apos;s pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
     * @param body Free-agent pickup offer payload.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentSendOfferBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament&apos;s pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
     * @param body Free-agent pickup offer payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentSendOfferBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link OffersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OffersRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new OffersRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
