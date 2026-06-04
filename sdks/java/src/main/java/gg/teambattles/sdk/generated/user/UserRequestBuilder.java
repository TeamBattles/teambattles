package gg.teambattles.sdk.generated.user;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.user.matches.MatchesRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /user
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class UserRequestBuilder extends BaseRequestBuilder {
    /**
     * The matches property
     * @return a {@link MatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MatchesRequestBuilder matches() {
        return new MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link UserRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public UserRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user", pathParameters);
    }
    /**
     * Instantiates a new {@link UserRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public UserRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user", rawUrl);
    }
}
