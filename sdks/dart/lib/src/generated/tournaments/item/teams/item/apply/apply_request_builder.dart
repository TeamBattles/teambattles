// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_team_entry_body.dart';
import '../../../../../models/tournament_team_entry_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\teams\{teamIdentifier}\apply
class ApplyRequestBuilder extends BaseRequestBuilder<ApplyRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ApplyRequestBuilder clone() {
        return ApplyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ApplyRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApplyRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/apply", pathParameters) ;
    /// Instantiates a new [ApplyRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApplyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/apply", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Submits an application for a team you lead to an APPLICATION-registration tournament and returns its participant ID. The participant is created PENDING and does NOT consume a slot, so unlike direct entry this endpoint never answers error_tournament_full - the capacity check happens when the organizer approves, and applying to a nominally full tournament is legitimate because approvals free slots. Use the sibling enter endpoint for OPEN-mode tournaments; a mode mismatch answers 400 error_invalid_input. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment. Requires the tournaments actor entry capability at read-write.
    ///  [body] Tournament entry payload for a team the caller leads.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentTeamEntryResponse?> postAsync(TournamentTeamEntryBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentTeamEntryResponse>(requestInfo, TournamentTeamEntryResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Submits an application for a team you lead to an APPLICATION-registration tournament and returns its participant ID. The participant is created PENDING and does NOT consume a slot, so unlike direct entry this endpoint never answers error_tournament_full - the capacity check happens when the organizer approves, and applying to a nominally full tournament is legitimate because approvals free slots. Use the sibling enter endpoint for OPEN-mode tournaments; a mode mismatch answers 400 error_invalid_input. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment. Requires the tournaments actor entry capability at read-write.
    ///  [body] Tournament entry payload for a team the caller leads.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentTeamEntryBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
