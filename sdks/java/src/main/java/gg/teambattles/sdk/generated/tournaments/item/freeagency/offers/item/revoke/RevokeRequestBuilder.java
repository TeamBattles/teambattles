package gg.teambattles.sdk.generated.tournaments.item.freeagency.offers.item.revoke;

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
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers/{offerId}/revoke
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RevokeRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RevokeRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RevokeRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/revoke", pathParameters);
    }
    /**
     * Instantiates a new {@link RevokeRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RevokeRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/revoke", rawUrl);
    }
    /**
     * Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
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
    public TournamentWriteAck post() {
        return post(null);
    }
    /**
     * Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
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
    public TournamentWriteAck post(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toPostRequestInformation(requestConfiguration);
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
     * Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
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
     * @return a {@link RevokeRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RevokeRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new RevokeRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
