package gg.teambattles.sdk.generated.tournaments.item.registration;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.registration.close.CloseRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.registration.open.OpenRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/registration
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RegistrationRequestBuilder extends BaseRequestBuilder {
    /**
     * The close property
     * @return a {@link CloseRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CloseRequestBuilder close() {
        return new CloseRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The open property
     * @return a {@link OpenRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OpenRequestBuilder open() {
        return new OpenRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link RegistrationRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RegistrationRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration", pathParameters);
    }
    /**
     * Instantiates a new {@link RegistrationRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RegistrationRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration", rawUrl);
    }
}
