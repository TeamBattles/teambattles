package gg.teambattles.sdk.generated.leagues.item.seasons;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.leagues.item.seasons.create.CreateRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.seasons.item.WithSeasonItemRequestBuilder;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.LeagueSeasons;
import gg.teambattles.sdk.generated.models.SeasonsRequestBody;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/seasons
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class SeasonsRequestBuilder extends BaseRequestBuilder {
    /**
     * The create property
     * @return a {@link CreateRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CreateRequestBuilder create() {
        return new CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Gets an item from the gg.teambattles.sdk.generated.leagues.item.seasons.item collection
     * @param seasonId League season ID.
     * @return a {@link WithSeasonItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithSeasonItemRequestBuilder bySeasonId(@jakarta.annotation.Nonnull final String seasonId) {
        Objects.requireNonNull(seasonId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("seasonId", seasonId);
        return new WithSeasonItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link SeasonsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public SeasonsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons", pathParameters);
    }
    /**
     * Instantiates a new {@link SeasonsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public SeasonsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons", rawUrl);
    }
    /**
     * Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
     * @param body Game and status filters for league seasons.
     * @return a {@link LeagueSeasons}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public LeagueSeasons post(@jakarta.annotation.Nonnull final SeasonsRequestBody body) {
        return post(body, null);
    }
    /**
     * Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
     * @param body Game and status filters for league seasons.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link LeagueSeasons}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public LeagueSeasons post(@jakarta.annotation.Nonnull final SeasonsRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, LeagueSeasons::createFromDiscriminatorValue);
    }
    /**
     * Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
     * @param body Game and status filters for league seasons.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final SeasonsRequestBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
     * @param body Game and status filters for league seasons.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final SeasonsRequestBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link SeasonsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public SeasonsRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new SeasonsRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
