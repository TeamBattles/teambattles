package gg.teambattles.sdk.generated.matches.item.acceptances.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.matches.item.acceptances.item.approve.ApproveRequestBuilder;
import gg.teambattles.sdk.generated.matches.item.acceptances.item.decline.DeclineRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /matches/{matchId}/acceptances/{acceptanceId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithAcceptanceItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The approve property
     * @return a {@link ApproveRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ApproveRequestBuilder approve() {
        return new ApproveRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The decline property
     * @return a {@link DeclineRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DeclineRequestBuilder decline() {
        return new DeclineRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithAcceptanceItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithAcceptanceItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithAcceptanceItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithAcceptanceItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}", rawUrl);
    }
}
