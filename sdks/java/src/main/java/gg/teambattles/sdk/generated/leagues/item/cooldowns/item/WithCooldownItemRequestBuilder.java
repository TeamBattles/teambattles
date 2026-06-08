package gg.teambattles.sdk.generated.leagues.item.cooldowns.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.cooldowns.item.clear.ClearRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns/{cooldownId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithCooldownItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The clear property
     * @return a {@link ClearRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ClearRequestBuilder clear() {
        return new ClearRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithCooldownItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithCooldownItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithCooldownItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithCooldownItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}", rawUrl);
    }
}
