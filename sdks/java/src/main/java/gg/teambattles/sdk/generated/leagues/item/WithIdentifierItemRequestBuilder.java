package gg.teambattles.sdk.generated.leagues.item;

import com.microsoft.kiota.BaseRequestBuilder;
import com.microsoft.kiota.BaseRequestConfiguration;
import com.microsoft.kiota.HttpMethod;
import com.microsoft.kiota.RequestAdapter;
import com.microsoft.kiota.RequestInformation;
import com.microsoft.kiota.RequestOption;
import com.microsoft.kiota.serialization.Parsable;
import com.microsoft.kiota.serialization.ParsableFactory;
import gg.teambattles.sdk.generated.leagues.item.activityfeed.ActivityFeedRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.announcements.AnnouncementsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.applyeligibility.ApplyEligibilityRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.bans.BansRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.branding.BrandingRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.cooldowns.CooldownsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.dashboard.DashboardRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.displayrules.DisplayRulesRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.games.GamesRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.matches.MatchesRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.members.MembersRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.ownership.OwnershipRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.penalties.PenaltiesRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.points.PointsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.rules.RulesRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.seasonoptions.SeasonOptionsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.seasons.SeasonsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.settings.SettingsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.shutdown.ShutdownRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.standings.StandingsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.teams.TeamsRequestBuilder;
import gg.teambattles.sdk.generated.leagues.item.tickets.TicketsRequestBuilder;
import gg.teambattles.sdk.generated.models.Error;
import gg.teambattles.sdk.generated.models.LeagueProfileResponse;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.Objects;
/**
 * Builds and executes requests for operations under /leagues/{identifier}
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
     * The announcements property
     * @return a {@link AnnouncementsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public AnnouncementsRequestBuilder announcements() {
        return new AnnouncementsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The applyEligibility property
     * @return a {@link ApplyEligibilityRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ApplyEligibilityRequestBuilder applyEligibility() {
        return new ApplyEligibilityRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The bans property
     * @return a {@link BansRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public BansRequestBuilder bans() {
        return new BansRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The branding property
     * @return a {@link BrandingRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public BrandingRequestBuilder branding() {
        return new BrandingRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The cooldowns property
     * @return a {@link CooldownsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public CooldownsRequestBuilder cooldowns() {
        return new CooldownsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The dashboard property
     * @return a {@link DashboardRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DashboardRequestBuilder dashboard() {
        return new DashboardRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The displayRules property
     * @return a {@link DisplayRulesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public DisplayRulesRequestBuilder displayRules() {
        return new DisplayRulesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The games property
     * @return a {@link GamesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public GamesRequestBuilder games() {
        return new GamesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The matches property
     * @return a {@link MatchesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MatchesRequestBuilder matches() {
        return new MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The members property
     * @return a {@link MembersRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public MembersRequestBuilder members() {
        return new MembersRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The ownership property
     * @return a {@link OwnershipRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public OwnershipRequestBuilder ownership() {
        return new OwnershipRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The penalties property
     * @return a {@link PenaltiesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public PenaltiesRequestBuilder penalties() {
        return new PenaltiesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The points property
     * @return a {@link PointsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public PointsRequestBuilder points() {
        return new PointsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The rules property
     * @return a {@link RulesRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public RulesRequestBuilder rules() {
        return new RulesRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The seasonOptions property
     * @return a {@link SeasonOptionsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public SeasonOptionsRequestBuilder seasonOptions() {
        return new SeasonOptionsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The seasons property
     * @return a {@link SeasonsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public SeasonsRequestBuilder seasons() {
        return new SeasonsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The settings property
     * @return a {@link SettingsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public SettingsRequestBuilder settings() {
        return new SettingsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The shutdown property
     * @return a {@link ShutdownRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public ShutdownRequestBuilder shutdown() {
        return new ShutdownRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * The standings property
     * @return a {@link StandingsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public StandingsRequestBuilder standings() {
        return new StandingsRequestBuilder(pathParameters, requestAdapter);
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
     * The tickets property
     * @return a {@link TicketsRequestBuilder}
     */
    @jakarta.annotation.Nonnull
    public TicketsRequestBuilder tickets() {
        return new TicketsRequestBuilder(pathParameters, requestAdapter);
    }
    /**
     * Instantiates a new {@link WithIdentifierItemRequestBuilder} and sets the default values.
     * @param pathParameters Path parameters for the request
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithIdentifierItemRequestBuilder(@jakarta.annotation.Nonnull final HashMap<String, Object> pathParameters, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}", pathParameters);
    }
    /**
     * Instantiates a new {@link WithIdentifierItemRequestBuilder} and sets the default values.
     * @param rawUrl The raw URL to use for the request builder.
     * @param requestAdapter The request adapter to use to execute the requests.
     */
    public WithIdentifierItemRequestBuilder(@jakarta.annotation.Nonnull final String rawUrl, @jakarta.annotation.Nonnull final RequestAdapter requestAdapter) {
        super(requestAdapter, "{+baseurl}/leagues/{identifier}", rawUrl);
    }
    /**
     * Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
     * @return a {@link LeagueProfileResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public LeagueProfileResponse post() {
        return post(null);
    }
    /**
     * Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link LeagueProfileResponse}
     * @throws Error When receiving a 401 status code
     * @throws Error When receiving a 403 status code
     * @throws Error When receiving a 404 status code
     */
    @jakarta.annotation.Nullable
    public LeagueProfileResponse post(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = toPostRequestInformation(requestConfiguration);
        final HashMap<String, ParsableFactory<? extends Parsable>> errorMapping = new HashMap<String, ParsableFactory<? extends Parsable>>();
        errorMapping.put("401", Error::createFromDiscriminatorValue);
        errorMapping.put("403", Error::createFromDiscriminatorValue);
        errorMapping.put("404", Error::createFromDiscriminatorValue);
        return this.requestAdapter.send(requestInfo, errorMapping, LeagueProfileResponse::createFromDiscriminatorValue);
    }
    /**
     * Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation() {
        return toPostRequestInformation(null);
    }
    /**
     * Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @return a {@link RequestInformation}
     */
    @jakarta.annotation.Nonnull
    public RequestInformation toPostRequestInformation(@jakarta.annotation.Nullable final java.util.function.Consumer<PostRequestConfiguration> requestConfiguration) {
        final RequestInformation requestInfo = new RequestInformation(HttpMethod.POST, urlTemplate, pathParameters);
        requestInfo.configure(requestConfiguration, PostRequestConfiguration::new);
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
    public class PostRequestConfiguration extends BaseRequestConfiguration {
    }
}
