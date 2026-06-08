package gg.teambattles.sdk.generated.leagues.item.tickets;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.tickets.create.CreateRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.tickets.item.WithTicketItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TicketsRequestBuilder extends BaseRequestBuilder {
    /**
     * The create property
     * @return a {@link CreateRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CreateRequestBuilder create() {
        return new CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Gets an item from the gg.teambattles.sdk.generated.leagues.item.tickets.item collection
     * @param ticketId League ticket ID.
     * @return a {@link WithTicketItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithTicketItemRequestBuilder byTicketId(@jakarta.annotation.Nonnull final String ticketId) {
        Objects.requireNonNull(ticketId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("ticketId", ticketId);
        return new WithTicketItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link TicketsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TicketsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets", pathParameters);
    }
    /**
     * Instantiates a new {@link TicketsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TicketsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets", rawUrl);
    }
}
