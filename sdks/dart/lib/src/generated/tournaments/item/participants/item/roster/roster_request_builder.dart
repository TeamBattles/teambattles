// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_organizer_roster_add_body.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\participants\{participantId}\roster
class RosterRequestBuilder extends BaseRequestBuilder<RosterRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RosterRequestBuilder clone() {
        return RosterRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RosterRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RosterRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/roster", pathParameters) ;
    /// Instantiates a new [RosterRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RosterRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/roster", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Adds a user to the named participant's tournament roster as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient here, because editing any participant's roster carries the same weight as issuing an invite; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. Answers 400 error_invalid_input when the user is not an active member of that team or is already rostered in this tournament. Requires the tournaments registration capability.
    ///  [body] Organizer roster addition payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentOrganizerRosterAddBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
    /// Adds a user to the named participant's tournament roster as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient here, because editing any participant's roster carries the same weight as issuing an invite; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. Answers 400 error_invalid_input when the user is not an active member of that team or is already rostered in this tournament. Requires the tournaments registration capability.
    ///  [body] Organizer roster addition payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentOrganizerRosterAddBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
