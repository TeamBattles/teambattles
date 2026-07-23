package gg.teambattles.sdk.generated.tournaments.item.teams.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.teams.item.apply.ApplyRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.teams.item.enter.EnterRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.teams.item.roster.RosterRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithTeamIdentifierItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The apply property
     * @return a {@link ApplyRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ApplyRequestBuilder apply() {
        return new ApplyRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The enter property
     * @return a {@link EnterRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public EnterRequestBuilder enter() {
        return new EnterRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The roster property
     * @return a {@link RosterRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RosterRequestBuilder roster() {
        return new RosterRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithTeamIdentifierItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithTeamIdentifierItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithTeamIdentifierItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithTeamIdentifierItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}", rawUrl);
    }
}
