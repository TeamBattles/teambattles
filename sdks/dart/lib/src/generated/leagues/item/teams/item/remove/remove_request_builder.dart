// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/remove_league_team_request_body.dart';
import '../../../../../models/remove_league_team_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\teams\{leagueTeamId}\remove
class RemoveRequestBuilder extends BaseRequestBuilder<RemoveRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RemoveRequestBuilder clone() {
        return RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RemoveRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RemoveRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/remove", pathParameters) ;
    /// Instantiates a new [RemoveRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RemoveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/remove", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes an approved team from the league. Pending matches are cancelled and ready or accepted matches are forfeited by the removed team. Requires a league-operator key bound to the league and the league teams capability.
    ///  [body] Removes an approved team from a league.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<RemoveLeagueTeamResponse?> postAsync(RemoveLeagueTeamRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<RemoveLeagueTeamResponse>(requestInfo, RemoveLeagueTeamResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes an approved team from the league. Pending matches are cancelled and ready or accepted matches are forfeited by the removed team. Requires a league-operator key bound to the league and the league teams capability.
    ///  [body] Removes an approved team from a league.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(RemoveLeagueTeamRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
