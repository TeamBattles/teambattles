package gg.teambattles.sdk.generated.leagues.item.bans;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.BansRequestBody;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.LeagueBans;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/bans
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class BansRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link BansRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public BansRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/bans", pathParameters);
    }
    /**
     * Instantiates a new {@link BansRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public BansRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/bans", rawUrl);
    }
    /**
     * Returns team bans for a league resolved by slug, with optional status filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param body Status filter for league team bans.
     * @return a {@link LeagueBans}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public LeagueBans post(@jakarta.annotation.Nonnull final BansRequestBody body) {
        return post(body, null);
    }
    /**
     * Returns team bans for a league resolved by slug, with optional status filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param body Status filter for league team bans.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link LeagueBans}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public LeagueBans post(@jakarta.annotation.Nonnull final BansRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, LeagueBans::createFromDiscriminatorValue);
    }
    /**
     * Returns team bans for a league resolved by slug, with optional status filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param body Status filter for league team bans.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final BansRequestBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Returns team bans for a league resolved by slug, with optional status filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param body Status filter for league team bans.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final BansRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.POST, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PostRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        requestInfo.setContentFromParsable(requestAdapter, "application/json", body);
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link BansRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public BansRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new BansRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
