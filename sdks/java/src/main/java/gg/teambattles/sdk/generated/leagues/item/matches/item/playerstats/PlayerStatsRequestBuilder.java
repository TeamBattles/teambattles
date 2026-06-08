package gg.teambattles.sdk.generated.leagues.item.matches.item.playerstats;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.GamePlayerStatsBody;
import gg.teambattles.sdk.generated.models.GamePlayerStatsResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/{matchId}/player-stats
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class PlayerStatsRequestBuilder extends BaseRequestBuilder {
    /**
     * Instantiates a new {@link PlayerStatsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public PlayerStatsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}/player-stats", pathParameters);
    }
    /**
     * Instantiates a new {@link PlayerStatsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public PlayerStatsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}/player-stats", rawUrl);
    }
    /**
     * Sets per-player stats on an existing league match map score. Requires a league-operator key bound to the league and the league scores capability.
     * @param body Request body for submitting or updating player stats for an existing map score.
     * @return a {@link GamePlayerStatsResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public GamePlayerStatsResponse post(@jakarta.annotation.Nonnull final GamePlayerStatsBody body) {
        return post(body, null);
    }
    /**
     * Sets per-player stats on an existing league match map score. Requires a league-operator key bound to the league and the league scores capability.
     * @param body Request body for submitting or updating player stats for an existing map score.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link GamePlayerStatsResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     */
    @jakarta.annotation.Nullable
    public GamePlayerStatsResponse post(@jakarta.annotation.Nonnull final GamePlayerStatsBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, GamePlayerStatsResponse::createFromDiscriminatorValue);
    }
    /**
     * Sets per-player stats on an existing league match map score. Requires a league-operator key bound to the league and the league scores capability.
     * @param body Request body for submitting or updating player stats for an existing map score.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final GamePlayerStatsBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Sets per-player stats on an existing league match map score. Requires a league-operator key bound to the league and the league scores capability.
     * @param body Request body for submitting or updating player stats for an existing map score.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final GamePlayerStatsBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link PlayerStatsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public PlayerStatsRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new PlayerStatsRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
