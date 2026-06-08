package gg.teambattles.sdk.generated.leagues.item.cooldowns;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.cooldowns.config.ConfigRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.cooldowns.issue.IssueRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.cooldowns.item.WithCooldownItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class CooldownsRequestBuilder extends BaseRequestBuilder {
    /**
     * The config property
     * @return a {@link ConfigRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ConfigRequestBuilder config() {
        return new ConfigRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The issue property
     * @return a {@link IssueRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public IssueRequestBuilder issue() {
        return new IssueRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Gets an item from the gg.teambattles.sdk.generated.leagues.item.cooldowns.item collection
     * @param cooldownId League member cooldown ID.
     * @return a {@link WithCooldownItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithCooldownItemRequestBuilder byCooldownId(@jakarta.annotation.Nonnull final String cooldownId) {
        Objects.requireNonNull(cooldownId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("cooldownId", cooldownId);
        return new WithCooldownItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link CooldownsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public CooldownsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns", pathParameters);
    }
    /**
     * Instantiates a new {@link CooldownsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public CooldownsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns", rawUrl);
    }
}
