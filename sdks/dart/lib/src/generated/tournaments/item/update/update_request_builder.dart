// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_update_request_body.dart';
import '../../../models/tournament_update_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\update
class UpdateRequestBuilder extends BaseRequestBuilder<UpdateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    UpdateRequestBuilder clone() {
        return UpdateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [UpdateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UpdateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/update", pathParameters) ;
    /// Instantiates a new [UpdateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UpdateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/update", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Applies a partial edit to a tournament, resolved by slug. The result is TRI-STATE and you must branch on `applied`: before the tournament has ever been approved the edit applies directly (`direct`); afterwards a material change is staged into a pending set and the tournament flips to AWAITING_APPROVAL (`pending`), and an edit that changes nothing is a `noop`. A COMPLETED or CANCELLED tournament rejects every edit with 400. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [body] Partial tournament edit. Send only the fields you are changing; at least one recognised field is required. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - check the response `applied` value and `changedFields`. `freeAgentsEnabled`, `seedingMethod` and the league-points settings are NOT editable here (league points has its own endpoint).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentUpdateResponse?> postAsync(TournamentUpdateRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentUpdateResponse>(requestInfo, TournamentUpdateResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Applies a partial edit to a tournament, resolved by slug. The result is TRI-STATE and you must branch on `applied`: before the tournament has ever been approved the edit applies directly (`direct`); afterwards a material change is staged into a pending set and the tournament flips to AWAITING_APPROVAL (`pending`), and an edit that changes nothing is a `noop`. A COMPLETED or CANCELLED tournament rejects every edit with 400. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [body] Partial tournament edit. Send only the fields you are changing; at least one recognised field is required. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - check the response `applied` value and `changedFields`. `freeAgentsEnabled`, `seedingMethod` and the league-points settings are NOT editable here (league points has its own endpoint).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentUpdateRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
