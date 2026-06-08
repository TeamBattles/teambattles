package gg.teambattles.sdk.generated.leagues.item.tickets.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.leagues.item.tickets.item.escalate.EscalateRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.tickets.item.reply.ReplyRequestBuilder;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.UpdateLeagueTicketRequestBody;
import gg.teambattles.sdk.generated.models.UpdateLeagueTicketResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets/{ticketId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithTicketItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The escalate property
     * @return a {@link EscalateRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public EscalateRequestBuilder escalate() {
        return new EscalateRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The reply property
     * @return a {@link ReplyRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ReplyRequestBuilder reply() {
        return new ReplyRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithTicketItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithTicketItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithTicketItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithTicketItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}", rawUrl);
    }
    /**
     * Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Updates league ticket status, priority, or assignment.
     * @return a {@link UpdateLeagueTicketResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public UpdateLeagueTicketResponse patch(@jakarta.annotation.Nonnull final UpdateLeagueTicketRequestBody body) {
        return patch(body, null);
    }
    /**
     * Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Updates league ticket status, priority, or assignment.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link UpdateLeagueTicketResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public UpdateLeagueTicketResponse patch(@jakarta.annotation.Nonnull final UpdateLeagueTicketRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, UpdateLeagueTicketResponse::createFromDiscriminatorValue);
    }
    /**
     * Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Updates league ticket status, priority, or assignment.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final UpdateLeagueTicketRequestBody body) {
        return toPatchRequestInformation(body, null);
    }
    /**
     * Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Updates league ticket status, priority, or assignment.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPatchRequestInformation(@jakarta.annotation.Nonnull final UpdateLeagueTicketRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PatchRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.PATCH, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PatchRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link WithTicketItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithTicketItemRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new WithTicketItemRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PatchRequestConfiguration extends BaseRequestConfiguration {
    }
}
