package gg.teambattles.sdk.generated.tournaments.item.teams.item.roster;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentTeamRosterAddBody;
import gg.teambattles.sdk.generated.models.TournamentWriteAck;
import gg.teambattles.sdk.generated.tournaments.item.teams.item.roster.item.WithRosterEntryItemRequestBuilder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}/teams/{teamIdentifier}/roster
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class RosterRequestBuilder extends BaseRequestBuilder {
    /**
     * Gets an item from the gg.teambattles.sdk.generated.tournaments.item.teams.item.roster.item collection
     * @param rosterEntryId Tournament roster entry ID.
     * @return a {@link WithRosterEntryItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithRosterEntryItemRequestBuilder byRosterEntryId(@jakarta.annotation.Nonnull final String rosterEntryId) {
        Objects.requireNonNull(rosterEntryId);
        final HashMap<String, Object> urlTplParams = new HashMap<String, Object>(this.pathParameters);
        urlTplParams.put("rosterEntryId", rosterEntryId);
        return new WithRosterEntryItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /**
     * Instantiates a new {@link RosterRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RosterRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster", pathParameters);
    }
    /**
     * Instantiates a new {@link RosterRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public RosterRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster", rawUrl);
    }
    /**
     * Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team&apos;s roster - editing another participant&apos;s roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
     * @param body Competitor roster addition payload.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentTeamRosterAddBody body) {
        return post(body, null);
    }
    /**
     * Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team&apos;s roster - editing another participant&apos;s roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
     * @param body Competitor roster addition payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentWriteAck}
     * @throws Error When receiving a 400 status code
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentWriteAck post(@jakarta.annotation.Nonnull final TournamentTeamRosterAddBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        Objects.requireNonNull(body);
        final RequestInformation requestInfo = toPostRequestInformation(body, requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("400", Error::createFromDiscriminatorValue);
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentWriteAck::createFromDiscriminatorValue);
    }
    /**
     * Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team&apos;s roster - editing another participant&apos;s roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
     * @param body Competitor roster addition payload.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentTeamRosterAddBody body) {
        return toPostRequestInformation(body, null);
    }
    /**
     * Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team&apos;s roster - editing another participant&apos;s roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
     * @param body Competitor roster addition payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nonnull final TournamentTeamRosterAddBody body, @jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
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
     * @return a {@link RosterRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RosterRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new RosterRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
