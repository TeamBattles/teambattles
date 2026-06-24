// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/league_profile_response.dart';
import './activityFeed/activity_feed_request_builder.dart';
import './announcements/announcements_request_builder.dart';
import './applyEligibility/apply_eligibility_request_builder.dart';
import './bans/bans_request_builder.dart';
import './branding/branding_request_builder.dart';
import './cooldowns/cooldowns_request_builder.dart';
import './dashboard/dashboard_request_builder.dart';
import './displayRules/display_rules_request_builder.dart';
import './games/games_request_builder.dart';
import './matches/matches_request_builder.dart';
import './members/members_request_builder.dart';
import './ownership/ownership_request_builder.dart';
import './penalties/penalties_request_builder.dart';
import './points/points_request_builder.dart';
import './rules/rules_request_builder.dart';
import './seasonOptions/season_options_request_builder.dart';
import './seasons/seasons_request_builder.dart';
import './settings/settings_request_builder.dart';
import './shutdown/shutdown_request_builder.dart';
import './standings/standings_request_builder.dart';
import './teams/teams_request_builder.dart';
import './tickets/tickets_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    ///  The activityFeed property
    ActivityFeedRequestBuilder get activityFeed {
        return ActivityFeedRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The announcements property
    AnnouncementsRequestBuilder get announcements {
        return AnnouncementsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The applyEligibility property
    ApplyEligibilityRequestBuilder get applyEligibility {
        return ApplyEligibilityRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The bans property
    BansRequestBuilder get bans {
        return BansRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The branding property
    BrandingRequestBuilder get branding {
        return BrandingRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The cooldowns property
    CooldownsRequestBuilder get cooldowns {
        return CooldownsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The dashboard property
    DashboardRequestBuilder get dashboard {
        return DashboardRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The displayRules property
    DisplayRulesRequestBuilder get displayRules {
        return DisplayRulesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The games property
    GamesRequestBuilder get games {
        return GamesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The matches property
    MatchesRequestBuilder get matches {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The members property
    MembersRequestBuilder get members {
        return MembersRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The ownership property
    OwnershipRequestBuilder get ownership {
        return OwnershipRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The penalties property
    PenaltiesRequestBuilder get penalties {
        return PenaltiesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The points property
    PointsRequestBuilder get points {
        return PointsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The rules property
    RulesRequestBuilder get rules {
        return RulesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The seasonOptions property
    SeasonOptionsRequestBuilder get seasonOptions {
        return SeasonOptionsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The seasons property
    SeasonsRequestBuilder get seasons {
        return SeasonsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The settings property
    SettingsRequestBuilder get settings {
        return SettingsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The shutdown property
    ShutdownRequestBuilder get shutdown {
        return ShutdownRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The standings property
    StandingsRequestBuilder get standings {
        return StandingsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The teams property
    TeamsRequestBuilder get teams {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The tickets property
    TicketsRequestBuilder get tickets {
        return TicketsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithIdentifierItemRequestBuilder clone() {
        return WithIdentifierItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}", pathParameters) ;
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueProfileResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueProfileResponse>(requestInfo, LeagueProfileResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
