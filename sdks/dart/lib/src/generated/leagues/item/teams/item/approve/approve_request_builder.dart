// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/approve_league_team_response.dart';
import '../../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\teams\{leagueTeamId}\approve
class ApproveRequestBuilder extends BaseRequestBuilder<ApproveRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ApproveRequestBuilder clone() {
        return ApproveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ApproveRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApproveRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/approve", pathParameters) ;
    /// Instantiates a new [ApproveRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApproveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/approve", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Approves a pending team application for the league. Requires a league-operator key bound to the league and the league teams capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApproveLeagueTeamResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApproveLeagueTeamResponse>(requestInfo, ApproveLeagueTeamResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Approves a pending team application for the league. Requires a league-operator key bound to the league and the league teams capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
