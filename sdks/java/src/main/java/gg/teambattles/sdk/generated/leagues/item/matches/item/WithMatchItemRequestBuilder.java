package gg.teambattles.sdk.generated.leagues.item.matches.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.matches.item.playerstats.PlayerStatsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.matches.item.scores.ScoresRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.matches.item.status.StatusRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/{matchId}
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
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithMatchItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMatchItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}", rawUrl);
    }
}
