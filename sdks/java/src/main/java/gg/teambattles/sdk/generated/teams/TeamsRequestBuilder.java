package gg.teambattles.sdk.generated.teams;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.teams.item.WithIdentifierItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /teams
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TeamsRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.teams.item collection
     * @param identifier Team id or slug.
     * @return a {@link WithIdentifierItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithIdentifierItemRequestBuilder byIdentifier(@jakarta.annotation.Nonnull final String identifier) {
        Objects.requireNonNull(identifier);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("identifier", identifier);
        return new WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link TeamsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TeamsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams", pathParameters);
    }
    /**
     * Instantiates a new {@link TeamsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TeamsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/teams", rawUrl);
    }
}
