// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/remove_display_rule_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\display-rules\{displayRuleId}
class WithDisplayRuleItemRequestBuilder extends BaseRequestBuilder<WithDisplayRuleItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithDisplayRuleItemRequestBuilder clone() {
        return WithDisplayRuleItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithDisplayRuleItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithDisplayRuleItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/display-rules/{displayRuleId}", pathParameters) ;
    /// Instantiates a new [WithDisplayRuleItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithDisplayRuleItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/display-rules/{displayRuleId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes an informational display rule. Requires a league-operator key bound to the league and the league display_rules capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<RemoveDisplayRuleResponse?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<RemoveDisplayRuleResponse>(requestInfo, RemoveDisplayRuleResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes an informational display rule. Requires a league-operator key bound to the league and the league display_rules capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
