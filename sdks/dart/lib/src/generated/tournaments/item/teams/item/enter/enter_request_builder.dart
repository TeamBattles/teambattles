// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_team_entry_body.dart';
import '../../../../../models/tournament_team_entry_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\teams\{teamIdentifier}\enter
class EnterRequestBuilder extends BaseRequestBuilder<EnterRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    EnterRequestBuilder clone() {
        return EnterRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [EnterRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    EnterRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/enter", pathParameters) ;
    /// Instantiates a new [EnterRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    EnterRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/enter", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Registers a team you lead directly into an OPEN-registration tournament and returns its participant ID. The entry is immediately APPROVED and consumes a participant slot, so the request is rejected with 409 error_tournament_full at capacity. Use the sibling apply endpoint for APPLICATION-mode tournaments - a mode mismatch answers 400 error_invalid_input rather than silently doing the other thing. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment, which is the only channel the leadership check covers. Requires the tournaments actor entry capability at read-write.
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
    /// Registers a team you lead directly into an OPEN-registration tournament and returns its participant ID. The entry is immediately APPROVED and consumes a participant slot, so the request is rejected with 409 error_tournament_full at capacity. Use the sibling apply endpoint for APPLICATION-mode tournaments - a mode mismatch answers 400 error_invalid_input rather than silently doing the other thing. Other refusals: 400 error_registration_closed outside the registration window, 400 error_roster_too_small below the tournament's teamSize, 409 error_already_entered when the team holds a non-terminal entry, and 403 error_competitive_banned while you are serving a competitive ban. There is no teamId body field - the acting team is the path segment, which is the only channel the leadership check covers. Requires the tournaments actor entry capability at read-write.
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
