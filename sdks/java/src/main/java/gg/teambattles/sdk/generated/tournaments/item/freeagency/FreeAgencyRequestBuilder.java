package gg.teambattles.sdk.generated.tournaments.item.freeagency;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.freeagency.me.MeRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.freeagency.offers.OffersRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/free-agency
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class FreeAgencyRequestBuilder extends BaseRequestBuilder {
    /**
     * The me property
     * @return a {@link MeRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MeRequestBuilder me() {
        return new MeRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The offers property
     * @return a {@link OffersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OffersRequestBuilder offers() {
        return new OffersRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link FreeAgencyRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public FreeAgencyRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency", pathParameters);
    }
    /**
     * Instantiates a new {@link FreeAgencyRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public FreeAgencyRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency", rawUrl);
    }
}
