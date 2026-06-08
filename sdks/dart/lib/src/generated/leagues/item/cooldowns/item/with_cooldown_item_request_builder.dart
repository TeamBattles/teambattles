// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './clear/clear_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\cooldowns\{cooldownId}
class WithCooldownItemRequestBuilder extends BaseRequestBuilder<WithCooldownItemRequestBuilder> {
    ///  The clear property
    ClearRequestBuilder get clear {
        return ClearRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithCooldownItemRequestBuilder clone() {
        return WithCooldownItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithCooldownItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithCooldownItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}", pathParameters) ;
    /// Instantiates a new [WithCooldownItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithCooldownItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
