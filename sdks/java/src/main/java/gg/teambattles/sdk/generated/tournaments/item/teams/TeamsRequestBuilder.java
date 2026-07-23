package gg.teambattles.sdk.generated.tournaments.item.teams;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.RequestAdapter;
import gg.teambattles.sdk.generated.tournaments.item.teams.item.WithTeamIdentifierItemRequestBuilder;
import java.util.HashMap;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/teams
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class TeamsRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.tournaments.item.teams.item collection
     * @param teamIdentifier Slug of the team to act as. You must be its captain, co-captain, or the owner of the organization that owns it. A team you do not lead and a slug that does not resolve BOTH answer 403 error_not_team_leader, so that this path is not a team-slug enumeration oracle.
     * @return a {@link WithTeamIdentifierItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithTeamIdentifierItemRequestBuilder byTeamIdentifier(@jakarta.annotation.Nonnull final String teamIdentifier) {
        Objects.requireNonNull(teamIdentifier);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("teamIdentifier", teamIdentifier);
        return new WithTeamIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link TeamsRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TeamsRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams", pathParameters);
    }
    /**
     * Instantiates a new {@link TeamsRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public TeamsRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams", rawUrl);
    }
}
