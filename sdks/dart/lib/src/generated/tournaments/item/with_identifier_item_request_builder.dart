// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/tournament_profile_response.dart';
import './activityFeed/activity_feed_request_builder.dart';
import './applications/applications_request_builder.dart';
import './bracket/bracket_request_builder.dart';
import './cancel/cancel_request_builder.dart';
import './freeAgency/free_agency_request_builder.dart';
import './freeAgents/free_agents_request_builder.dart';
import './invites/invites_request_builder.dart';
import './leaguePoints/league_points_request_builder.dart';
import './me/me_request_builder.dart';
import './nodes/nodes_request_builder.dart';
import './participants/participants_request_builder.dart';
import './regenerateMatches/regenerate_matches_request_builder.dart';
import './registration/registration_request_builder.dart';
import './rosterEntries/roster_entries_request_builder.dart';
import './rounds/rounds_request_builder.dart';
import './staff/staff_request_builder.dart';
import './start/start_request_builder.dart';
import './submitForApproval/submit_for_approval_request_builder.dart';
import './teams/teams_request_builder.dart';
import './update/update_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    ///  The activityFeed property
    ActivityFeedRequestBuilder get activityFeed {
        return ActivityFeedRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The applications property
    ApplicationsRequestBuilder get applications {
        return ApplicationsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The bracket property
    BracketRequestBuilder get bracket {
        return BracketRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The cancel property
    CancelRequestBuilder get cancel {
        return CancelRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The freeAgency property
    FreeAgencyRequestBuilder get freeAgency {
        return FreeAgencyRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The freeAgents property
    FreeAgentsRequestBuilder get freeAgents {
        return FreeAgentsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The invites property
    InvitesRequestBuilder get invites {
        return InvitesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The leaguePoints property
    LeaguePointsRequestBuilder get leaguePoints {
        return LeaguePointsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The me property
    MeRequestBuilder get me {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The nodes property
    NodesRequestBuilder get nodes {
        return NodesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The participants property
    ParticipantsRequestBuilder get participants {
        return ParticipantsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The regenerateMatches property
    RegenerateMatchesRequestBuilder get regenerateMatches {
        return RegenerateMatchesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The registration property
    RegistrationRequestBuilder get registration {
        return RegistrationRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The rosterEntries property
    RosterEntriesRequestBuilder get rosterEntries {
        return RosterEntriesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The rounds property
    RoundsRequestBuilder get rounds {
        return RoundsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The staff property
    StaffRequestBuilder get staff {
        return StaffRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The start property
    StartRequestBuilder get start {
        return StartRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The submitForApproval property
    SubmitForApprovalRequestBuilder get submitForApproval {
        return SubmitForApprovalRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The teams property
    TeamsRequestBuilder get teams {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The update property
    UpdateRequestBuilder get update {
        return UpdateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithIdentifierItemRequestBuilder clone() {
        return WithIdentifierItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}", pathParameters) ;
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentProfileResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentProfileResponse>(requestInfo, TournamentProfileResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the profile for a single tournament, resolved by slug. A tournament you may not view answers 404, identically to an unknown slug. Manager-private review fields are included only when the caller manages the tournament. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
