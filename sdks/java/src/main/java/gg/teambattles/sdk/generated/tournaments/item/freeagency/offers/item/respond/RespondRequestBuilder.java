package gg.teambattles.sdk.generated.tournaments.item.freeagency.offers.item.respond;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentOfferRespondBody;
import gg.teambattles.sdk.generated.models.TournamentOfferRespondResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers/{offerId}/respond
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RespondRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RespondRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RespondRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/respond", pathParameters);
    }
    /**
     * Instantiates a new {@link RespondRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RespondRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/respond", rawUrl);
    }
    /**
     * Answers a pickup offer addressed to you as a free agent. You must be the offer&apos;s recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team&apos;s tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
     * @param body Free agent&apos;s response to a pickup offer.
     * @return a {@link TournamentOfferRespondResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentOfferRespondResponse post(@jakarta.annotation.Nonnull final TournamentOfferRespondBody body) {
        return post(body, null);
    }
    /**
     * Answers a pickup offer addressed to you as a free agent. You must be the offer&apos;s recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team&apos;s tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
     * @param body Free agent&apos;s response to a pickup offer.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentOfferRespondResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 409 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentOfferRespondResponse post(@jakarta.annotation.Nonnull final TournamentOfferRespondBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentOfferRespondResponse::createFromDiscriminatorValue);
    }
    /**
     * Answers a pickup offer addressed to you as a free agent. You must be the offer&apos;s recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team&apos;s tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
     * @param body Free agent&apos;s response to a pickup offer.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentOfferRespondBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Answers a pickup offer addressed to you as a free agent. You must be the offer&apos;s recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team&apos;s tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
     * @param body Free agent&apos;s response to a pickup offer.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentOfferRespondBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
