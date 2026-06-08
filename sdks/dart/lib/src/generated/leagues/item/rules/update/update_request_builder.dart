// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/rule_write_response.dart';
import '../../../../models/update_game_rules_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\rules\update
class UpdateRequestBuilder extends BaseRequestBuilder<UpdateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    UpdateRequestBuilder clone() {
        return UpdateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [UpdateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UpdateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/rules/update", pathParameters) ;
    /// Instantiates a new [UpdateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UpdateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/rules/update", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Creates or updates enforced rules for a league game. Requires a league-operator key bound to the league and the league rules capability.
    ///  [body] Updates league game rules.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<RuleWriteResponse?> postAsync(UpdateGameRulesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<RuleWriteResponse>(requestInfo, RuleWriteResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates or updates enforced rules for a league game. Requires a league-operator key bound to the league and the league rules capability.
    ///  [body] Updates league game rules.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(UpdateGameRulesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
