package gg.teambattles.sdk.generated.tournaments.item.freeagency.offers;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.freeagency.offers.item.WithOfferItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency/offers
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class OffersRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.tournaments.item.freeAgency.offers.item collection
     * @param offerId Free-agent pickup offer ID, as returned by GET /tournaments/{identifier}/me - inbound offers under `offers`.
     * @return a {@link WithOfferItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithOfferItemRequestBuilder byOfferId(@jakarta.annotation.Nonnull final String offerId) {
        Objects.requireNonNull(offerId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("offerId", offerId);
        return new WithOfferItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link OffersRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OffersRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers", pathParameters);
    }
    /**
     * Instantiates a new {@link OffersRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public OffersRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers", rawUrl);
    }
}
