package gg.teambattles.sdk.generated.tournaments.item.freeagents.item.remove;

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
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agents/{freeAgentId}/remove
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RemoveRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link RemoveRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RemoveRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/remove", pathParameters);
    }
    /**
     * Instantiates a new {@link RemoveRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RemoveRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/remove", rawUrl);
    }
    /**
     * Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input (&quot;Remove the player from the team roster first&quot;) and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
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
     * Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input (&quot;Remove the player from the team roster first&quot;) and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
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
     * Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input (&quot;Remove the player from the team roster first&quot;) and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input (&quot;Remove the player from the team roster first&quot;) and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
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
