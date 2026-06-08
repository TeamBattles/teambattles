package gg.teambattles.sdk.generated.user.gameranks.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.user.gameranks.item.item.WithModeItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /user/game-ranks/{gameId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithGameItemRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.user.gameRanks.item.item collection
     * @param mode Game mode / playlist of the rank to delete.
     * @return a {@link WithModeItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithModeItemRequestBuilder byMode(@jakarta.annotation.Nonnull final String mode) {
        Objects.requireNonNull(mode);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("mode", mode);
        return new WithModeItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithGameItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithGameItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user/game-ranks/{gameId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithGameItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithGameItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/user/game-ranks/{gameId}", rawUrl);
    }
}
