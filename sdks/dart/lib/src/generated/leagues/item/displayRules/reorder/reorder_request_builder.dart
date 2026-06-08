// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/reorder_display_rules_request_body.dart';
import '../../../../models/reorder_display_rules_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\display-rules\reorder
class ReorderRequestBuilder extends BaseRequestBuilder<ReorderRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ReorderRequestBuilder clone() {
        return ReorderRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ReorderRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ReorderRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/display-rules/reorder", pathParameters) ;
    /// Instantiates a new [ReorderRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ReorderRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/display-rules/reorder", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Reorders display rules for a league game. Requires a league-operator key bound to the league and the league display_rules capability.
    ///  [body] Reorders display rules.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ReorderDisplayRulesResponse?> postAsync(ReorderDisplayRulesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ReorderDisplayRulesResponse>(requestInfo, ReorderDisplayRulesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Reorders display rules for a league game. Requires a league-operator key bound to the league and the league display_rules capability.
    ///  [body] Reorders display rules.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ReorderDisplayRulesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
