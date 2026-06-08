// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/deny_league_team_request_body.dart';
import '../../../../../models/deny_league_team_response.dart';
import '../../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\teams\{leagueTeamId}\deny
class DenyRequestBuilder extends BaseRequestBuilder<DenyRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DenyRequestBuilder clone() {
        return DenyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DenyRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DenyRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/deny", pathParameters) ;
    /// Instantiates a new [DenyRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DenyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/deny", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Denies a pending team application for the league. Requires a league-operator key bound to the league and the league teams capability.
    ///  [body] Denies a pending league team application.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DenyLeagueTeamResponse?> postAsync(DenyLeagueTeamRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DenyLeagueTeamResponse>(requestInfo, DenyLeagueTeamResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Denies a pending team application for the league. Requires a league-operator key bound to the league and the league teams capability.
    ///  [body] Denies a pending league team application.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(DenyLeagueTeamRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
