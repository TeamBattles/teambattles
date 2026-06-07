package gg.teambattles.sdk.generated.games.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.games.item.playlists.PlaylistsRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /games/{id}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class GamesItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The playlists property
     * @return a {@link PlaylistsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public PlaylistsRequestBuilder playlists() {
        return new PlaylistsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link GamesItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public GamesItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/games/{id}", pathParameters);
    }
    /**
     * Instantiates a new {@link GamesItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public GamesItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/games/{id}", rawUrl);
    }
}
