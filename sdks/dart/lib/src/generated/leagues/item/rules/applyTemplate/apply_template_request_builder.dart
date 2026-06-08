// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/apply_rule_template_request_body.dart';
import '../../../../models/apply_rule_template_response.dart';
import '../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\rules\apply-template
class ApplyTemplateRequestBuilder extends BaseRequestBuilder<ApplyTemplateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ApplyTemplateRequestBuilder clone() {
        return ApplyTemplateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ApplyTemplateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApplyTemplateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/rules/apply-template", pathParameters) ;
    /// Instantiates a new [ApplyTemplateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApplyTemplateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/rules/apply-template", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Applies a rule template to a league game. Requires a league-operator key bound to the league and the league rules capability.
    ///  [body] Applies a rule template.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApplyRuleTemplateResponse?> postAsync(ApplyRuleTemplateRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<ApplyRuleTemplateResponse>(requestInfo, ApplyRuleTemplateResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Applies a rule template to a league game. Requires a league-operator key bound to the league and the league rules capability.
    ///  [body] Applies a rule template.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ApplyRuleTemplateRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
