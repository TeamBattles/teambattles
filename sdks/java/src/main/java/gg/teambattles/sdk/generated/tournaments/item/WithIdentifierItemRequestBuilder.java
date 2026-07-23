package gg.teambattles.sdk.generated.tournaments.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.TournamentProfileResponse;
import gg.teambattles.sdk.generated.tournaments.item.activityfeed.ActivityFeedRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.applications.ApplicationsRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.bracket.BracketRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.cancel.CancelRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.freeagency.FreeAgencyRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.freeagents.FreeAgentsRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.invites.InvitesRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.leaguepoints.LeaguePointsRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.me.MeRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.nodes.NodesRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.participants.ParticipantsRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.regeneratematches.RegenerateMatchesRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.registration.RegistrationRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.rosterentries.RosterEntriesRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.rounds.RoundsRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.staff.StaffRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.start.StartRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.submitforapproval.SubmitForApprovalRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.teams.TeamsRequestBuilder;
import gg.teambattles.sdk.generated.tournaments.item.update.UpdateRequestBuilder;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /tournaments/{identifier}
 */
@jakarta.annotation.Generated("com.microsoft.kiota")
public class WithIdentifierItemRequestBuilder extends BaseRequestBuilder {
    /**
     * The activityFeed property
     * @return a {@link ActivityFeedRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ActivityFeedRequestBuilder activityFeed() {
        return new ActivityFeedRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The applications property
     * @return a {@link ApplicationsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ApplicationsRequestBuilder applications() {
        return new ApplicationsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The bracket property
     * @return a {@link BracketRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public BracketRequestBuilder bracket() {
        return new BracketRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The cancel property
     * @return a {@link CancelRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CancelRequestBuilder cancel() {
        return new CancelRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The freeAgency property
     * @return a {@link FreeAgencyRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public FreeAgencyRequestBuilder freeAgency() {
        return new FreeAgencyRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The freeAgents property
     * @return a {@link FreeAgentsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public FreeAgentsRequestBuilder freeAgents() {
        return new FreeAgentsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The invites property
     * @return a {@link InvitesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public InvitesRequestBuilder invites() {
        return new InvitesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The leaguePoints property
     * @return a {@link LeaguePointsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public LeaguePointsRequestBuilder leaguePoints() {
        return new LeaguePointsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The me property
     * @return a {@link MeRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MeRequestBuilder me() {
        return new MeRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The nodes property
     * @return a {@link NodesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public NodesRequestBuilder nodes() {
        return new NodesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The participants property
     * @return a {@link ParticipantsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ParticipantsRequestBuilder participants() {
        return new ParticipantsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The regenerateMatches property
     * @return a {@link RegenerateMatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RegenerateMatchesRequestBuilder regenerateMatches() {
        return new RegenerateMatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The registration property
     * @return a {@link RegistrationRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RegistrationRequestBuilder registration() {
        return new RegistrationRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The rosterEntries property
     * @return a {@link RosterEntriesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RosterEntriesRequestBuilder rosterEntries() {
        return new RosterEntriesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The rounds property
     * @return a {@link RoundsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RoundsRequestBuilder rounds() {
        return new RoundsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The staff property
     * @return a {@link StaffRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public StaffRequestBuilder staff() {
        return new StaffRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The start property
     * @return a {@link StartRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public StartRequestBuilder start() {
        return new StartRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The submitForApproval property
     * @return a {@link SubmitForApprovalRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public SubmitForApprovalRequestBuilder submitForApproval() {
        return new SubmitForApprovalRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The teams property
     * @return a {@link TeamsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TeamsRequestBuilder teams() {
        return new TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The update property
     * @return a {@link UpdateRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public UpdateRequestBuilder update() {
        return new UpdateRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithIdentifierItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithIdentifierItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithIdentifierItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithIdentifierItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/tournaments/{identifier}", rawUrl);
    }
    /**
     * Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
     * @return a {@link TournamentProfileResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentProfileResponse get() {
        return get(null);
    }
    /**
     * Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link TournamentProfileResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     * @throws Error When receiving a 429 status code
     * @throws Error When receiving a 500 status code
     */
    @jakarta.annotation.Nullable
    public TournamentProfileResponse get(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toGetRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        errorMapping.put("429", Error::createFromDiscriminatorValue);
        errorMapping.put("500", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, TournamentProfileResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation() {
        return toGetRequestInformation(null);
    }
    /**
     * Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toGetRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<GetRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.GET, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, GetRequestConfiguration::new);
        requestInfo.headers.tryAdd("Accept", "application/json");
        return requestInfo;
    }
    /**
     * Returns a request builder with the provided arbitrary URL. Using this method means any other path or query parameters are ignored.
     * @param rawUrl The raw URL to use for the request builder.
     * @return a {@link WithIdentifierItemRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public WithIdentifierItemRequestBuilder withUrl(@jakarta.annotation.Nonnull final String rawUrl) {
        Objects.requireNonNull(rawUrl);
        return new WithIdentifierItemRequestBuilder(rawUrl, requestAdapter);
    }
    /**
     * Configuration for the request such as headers, query parameters, and middleware options.
     */
    @jakarta.annotation.Generated("com.microsoft.kiota")
    public class GetRequestConfiguration extends BaseRequestConfiguration {
    }
}
