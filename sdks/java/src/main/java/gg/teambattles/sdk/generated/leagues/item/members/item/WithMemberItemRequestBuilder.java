package gg.teambattles.sdk.generated.leagues.item.members.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.leagues.item.members.item.remove.RemoveRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.members.item.role.RoleRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}/members/{memberId}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithMemberItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The remove property
     * @return a {@link RemoveRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RemoveRequestBuilder remove() {
        return new RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The role property
     * @return a {@link RoleRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RoleRequestBuilder role() {
        return new RoleRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithMemberItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMemberItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/members/{memberId}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithMemberItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithMemberItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}/members/{memberId}", rawUrl);
    }
}
