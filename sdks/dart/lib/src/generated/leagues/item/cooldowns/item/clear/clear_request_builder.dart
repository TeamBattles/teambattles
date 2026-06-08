// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/clear_cooldown_response.dart';
import '../../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\cooldowns\{cooldownId}\clear
class ClearRequestBuilder extends BaseRequestBuilder<ClearRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ClearRequestBuilder clone() {
        return ClearRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ClearRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ClearRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}/clear", pathParameters) ;
    /// Instantiates a new [ClearRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ClearRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}/clear", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Clears an active league member cooldown early. Requires a league-operator key bound to the league and the league cooldowns capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ClearCooldownResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ClearCooldownResponse>(requestInfo, ClearCooldownResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Clears an active league member cooldown early. Requires a league-operator key bound to the league and the league cooldowns capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
