package gg.teambattles.sdk.generated.leagues.item.branding;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.branding.update.UpdateRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/branding
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class BrandingRequestBuilder extends BaseRequestBuilder {
    /**
     * The update property
     * @return a {@link UpdateRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public UpdateRequestBuilder update() {
        return new UpdateRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link BrandingRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public BrandingRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/branding", pathParameters);
    }
    /**
     * Instantiates a new {@link BrandingRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public BrandingRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/branding", rawUrl);
    }
}
