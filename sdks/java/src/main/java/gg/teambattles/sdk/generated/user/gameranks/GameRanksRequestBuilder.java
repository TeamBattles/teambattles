package gg.teambattles.sdk.generated.user.gameranks;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.GameRankListResponse;
import gg.teambattles.sdk.generated.models.GameRankUpsertBody;
import gg.teambattles.sdk.generated.models.GameRankUpsertResponse;
import gg.teambattles.sdk.generated.user.gameranks.item.WithGameItemRequestBuilder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /user/game-ranks
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GameRanksRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.user.gameRanks.item collection
     * @param gameId Game definition ID of the rank to delete.
     * @return a {@link WithGameItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithGameItemRequestBuilder byGameId(@jakarta.annotation.Nonnull final String gameId) {
        Objects.requireNonNull(gameId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("gameId", gameId);
        return new WithGameItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link GameRanksRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public GameRanksRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user/game-ranks", pathParameters);
    }
    /**
     * Instantiates a new {@link GameRanksRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public GameRanksRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user/game-ranks", rawUrl);
    }
    /**
     * Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
     * @return a {@link GameRankListResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public GameRankListResponse get() {
        return get(null);
    }
    /**
     * Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link GameRankListResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public GameRankListResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, GameRankListResponse::createFromDiscriminatorValue);
    }
    /**
     * Creates or overwrites the API key owner&apos;s rank for a single (gameId, mode) slot, forcing source to &quot;api&quot;. The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param body Upsert the API key owner&apos;s rank for one (gameId, mode) slot.
     * @return a {@link GameRankUpsertResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public GameRankUpsertResponse post(@jakarta.annotation.Nonnull final GameRankUpsertBody body) {
        return post(body, null);
    }
    /**
     * Creates or overwrites the API key owner&apos;s rank for a single (gameId, mode) slot, forcing source to &quot;api&quot;. The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param body Upsert the API key owner&apos;s rank for one (gameId, mode) slot.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link GameRankUpsertResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public GameRankUpsertResponse post(@jakarta.annotation.Nonnull final GameRankUpsertBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, GameRankUpsertResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
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
     * Creates or overwrites the API key owner&apos;s rank for a single (gameId, mode) slot, forcing source to &quot;api&quot;. The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param body Upsert the API key owner&apos;s rank for one (gameId, mode) slot.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final GameRankUpsertBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Creates or overwrites the API key owner&apos;s rank for a single (gameId, mode) slot, forcing source to &quot;api&quot;. The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param body Upsert the API key owner&apos;s rank for one (gameId, mode) slot.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final GameRankUpsertBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link GameRanksRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public GameRanksRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new GameRanksRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
