// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_team_roster_add_body.dart';
import '../../../../../models/tournament_write_ack.dart';
import './item/with_roster_entry_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\teams\{teamIdentifier}\roster
class RosterRequestBuilder extends BaseRequestBuilder<RosterRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.teams.item.roster.item collection
    ///  [rosterEntryId] Tournament roster entry ID.
    WithRosterEntryItemRequestBuilder byRosterEntryId(String rosterEntryId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('rosterEntryId', () => rosterEntryId);
        return WithRosterEntryItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    RosterRequestBuilder clone() {
        return RosterRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RosterRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RosterRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster", pathParameters) ;
    /// Instantiates a new [RosterRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RosterRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team's roster - editing another participant's roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
    ///  [body] Competitor roster addition payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentTeamRosterAddBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentWriteAck>(requestInfo, TournamentWriteAck.createFromDiscriminatorValue, errorMapping);
    }
    /// Adds a user to the tournament roster of a team you lead. The participant edited is derived from the team in the path, so this endpoint can only ever touch your own team's roster - editing another participant's roster is the separate organizer endpoint and requires ADMIN authority over the tournament. Answers 400 error_invalid_input when the team is not entered in this tournament, when the user is not an ACTIVE member of that team, or when the user is already rostered in this tournament (one roster entry per user per tournament, across all teams). Requires the tournaments actor roster capability.
    ///  [body] Competitor roster addition payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentTeamRosterAddBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
