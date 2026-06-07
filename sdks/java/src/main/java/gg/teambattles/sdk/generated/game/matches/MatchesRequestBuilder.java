package gg.teambattles.sdk.generated.game.matches;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.game.matches.batchscores.BatchScoresRequestBuilder;
import gg.teambattles.sdk.generated.game.matches.create.CreateRequestBuilder;
import gg.teambattles.sdk.generated.game.matches.item.WithMatchItemRequestBuilder;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.ListGameMatchesBody;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /game/matches
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class MatchesRequestBuilder extends BaseRequestBuilder {
    /**
     * The batchScores property
     * @return a {@link BatchScoresRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public BatchScoresRequestBuilder batchScores() {
        return new BatchScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The create property
     * @return a {@link CreateRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CreateRequestBuilder create() {
        return new CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Gets an item from the gg.teambattles.sdk.generated.game.matches.item collection
     * @param matchId Match ID.
     * @return a {@link WithMatchItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithMatchItemRequestBuilder byMatchId(@jakarta.annotation.Nonnull final String matchId) {
        Objects.requireNonNull(matchId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("matchId", matchId);
        return new WithMatchItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link MatchesRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MatchesRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/game/matches", pathParameters);
    }
    /**
     * Instantiates a new {@link MatchesRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public MatchesRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/game/matches", rawUrl);
    }
    /**
     * Returns matches for the API key owner&apos;s approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
     * @param body Status filter and cursor pagination for listing the bound key&apos;s game matches. The game is derived from the developer-app key&apos;s bound game (not a body field).
     * @return a {@link MatchesPostResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     */
    @jakarta.annotation.Nullable
    public MatchesPostResponse post(@jakarta.annotation.Nonnull final ListGameMatchesBody body) {
        return post(body, null);
    }
    /**
     * Returns matches for the API key owner&apos;s approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
     * @param body Status filter and cursor pagination for listing the bound key&apos;s game matches. The game is derived from the developer-app key&apos;s bound game (not a body field).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link MatchesPostResponse}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     */
    @jakarta.annotation.Nullable
    public MatchesPostResponse post(@jakarta.annotation.Nonnull final ListGameMatchesBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, MatchesPostResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns matches for the API key owner&apos;s approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
     * @param body Status filter and cursor pagination for listing the bound key&apos;s game matches. The game is derived from the developer-app key&apos;s bound game (not a body field).
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final ListGameMatchesBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Returns matches for the API key owner&apos;s approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
     * @param body Status filter and cursor pagination for listing the bound key&apos;s game matches. The game is derived from the developer-app key&apos;s bound game (not a body field).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final ListGameMatchesBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link MatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MatchesRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new MatchesRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
