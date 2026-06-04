package gg.teambattles.sdk.generated.game.matches.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.game.matches.item.playerstats.PlayerStatsRequestBuilder;
import gg.teambattles.sdk.generated.game.matches.item.rosters.RostersRequestBuilder;
import gg.teambattles.sdk.generated.game.matches.item.scores.ScoresRequestBuilder;
import gg.teambattles.sdk.generated.game.matches.item.status.StatusRequestBuilder;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.GameMatchDetailResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /game/matches/{matchId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithMatchItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The playerStats property
     * @return a {@link PlayerStatsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public PlayerStatsRequestBuilder playerStats() {
        return new PlayerStatsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The rosters property
     * @return a {@link RostersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RostersRequestBuilder rosters() {
        return new RostersRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The scores property
     * @return a {@link ScoresRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ScoresRequestBuilder scores() {
        return new ScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The status property
     * @return a {@link StatusRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public StatusRequestBuilder status() {
        return new StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithMatchItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMatchItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/game/matches/{matchId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithMatchItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMatchItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/game/matches/{matchId}", rawUrl);
    }
    /**
     * Returns detailed info for one match, validated to belong to the API key owner&apos;s approved game. Requires the game.lifecycle:read permission.
     * @return a {@link GameMatchDetailResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailResponse get() {
        return get(null);
    }
    /**
     * Returns detailed info for one match, validated to belong to the API key owner&apos;s approved game. Requires the game.lifecycle:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link GameMatchDetailResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public GameMatchDetailResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, GameMatchDetailResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns detailed info for one match, validated to belong to the API key owner&apos;s approved game. Requires the game.lifecycle:read permission.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns detailed info for one match, validated to belong to the API key owner&apos;s approved game. Requires the game.lifecycle:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.GET, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, GetRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link WithMatchItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithMatchItemRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new WithMatchItemRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
}
