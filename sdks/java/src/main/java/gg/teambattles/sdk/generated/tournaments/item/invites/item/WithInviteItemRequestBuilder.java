package gg.teambattles.sdk.generated.tournaments.item.invites.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.invites.item.respond.RespondRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.invites.item.revoke.RevokeRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/invites/{inviteId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithInviteItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The respond property
     * @return a {@link RespondRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RespondRequestBuilder respond() {
        return new RespondRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The revoke property
     * @return a {@link RevokeRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RevokeRequestBuilder revoke() {
        return new RevokeRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithInviteItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithInviteItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithInviteItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithInviteItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}", rawUrl);
    }
}
