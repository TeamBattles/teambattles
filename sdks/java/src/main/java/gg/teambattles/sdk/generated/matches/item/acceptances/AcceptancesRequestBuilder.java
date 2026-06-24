package gg.teambattles.sdk.generated.matches.item.acceptances;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.matches.item.acceptances.item.WithAcceptanceItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /matches/{matchId}/acceptances
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class AcceptancesRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.matches.item.acceptances.item collection
     * @param acceptanceId Match acceptance ID.
     * @return a {@link WithAcceptanceItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithAcceptanceItemRequestBuilder byAcceptanceId(@jakarta.annotation.Nonnull final String acceptanceId) {
        Objects.requireNonNull(acceptanceId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("acceptanceId", acceptanceId);
        return new WithAcceptanceItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link AcceptancesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public AcceptancesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances", pathParameters);
    }
    /**
     * Instantiates a new {@link AcceptancesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public AcceptancesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances", rawUrl);
    }
}
