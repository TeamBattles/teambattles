// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/request_league_shutdown_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\shutdown\request
class RequestRequestBuilder extends BaseRequestBuilder<RequestRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RequestRequestBuilder clone() {
        return RequestRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RequestRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RequestRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/shutdown/request", pathParameters) ;
    /// Instantiates a new [RequestRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RequestRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/shutdown/request", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Requests TeamBattles staff review for league shutdown. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority. Staff-only shutdown execution is not exposed by the public API.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<RequestLeagueShutdownResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<RequestLeagueShutdownResponse>(requestInfo, RequestLeagueShutdownResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Requests TeamBattles staff review for league shutdown. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority. Staff-only shutdown execution is not exposed by the public API.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
