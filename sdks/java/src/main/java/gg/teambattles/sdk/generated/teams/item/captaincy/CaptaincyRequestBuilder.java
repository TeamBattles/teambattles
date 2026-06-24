package gg.teambattles.sdk.generated.teams.item.captaincy;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.teams.item.captaincy.transfer.TransferRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /teams/{identifier}/captaincy
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CaptaincyRequestBuilder extends BaseRequestBuilder {
    /**
     * The transfer property
     * @return a {@link TransferRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TransferRequestBuilder transfer() {
        return new TransferRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link CaptaincyRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public CaptaincyRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams/{identifier}/captaincy", pathParameters);
    }
    /**
     * Instantiates a new {@link CaptaincyRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public CaptaincyRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams/{identifier}/captaincy", rawUrl);
    }
}
