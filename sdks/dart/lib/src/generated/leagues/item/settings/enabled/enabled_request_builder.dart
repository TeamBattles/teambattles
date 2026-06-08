// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/set_league_enabled_request_body.dart';
import '../../../../models/set_league_enabled_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\settings\enabled
class EnabledRequestBuilder extends BaseRequestBuilder<EnabledRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    EnabledRequestBuilder clone() {
        return EnabledRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [EnabledRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    EnabledRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/settings/enabled", pathParameters) ;
    /// Instantiates a new [EnabledRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    EnabledRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/settings/enabled", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Enables or disables a league. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
    ///  [body] League enabled-state update.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<SetLeagueEnabledResponse?> postAsync(SetLeagueEnabledRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<SetLeagueEnabledResponse>(requestInfo, SetLeagueEnabledResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Enables or disables a league. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
    ///  [body] League enabled-state update.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(SetLeagueEnabledRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
