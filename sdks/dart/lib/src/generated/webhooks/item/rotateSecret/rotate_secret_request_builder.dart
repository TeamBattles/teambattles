// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/webhook_secret.dart';

/// auto generated
/// Builds and executes requests for operations under \webhooks\{id}\rotate-secret
class RotateSecretRequestBuilder extends BaseRequestBuilder<RotateSecretRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RotateSecretRequestBuilder clone() {
        return RotateSecretRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RotateSecretRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RotateSecretRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}/rotate-secret", pathParameters) ;
    /// Instantiates a new [RotateSecretRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RotateSecretRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}/rotate-secret", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Rotates the endpoint's signing secret. The previous secret keeps signing for a 24h grace window so consumers can update without missing deliveries. Returns the new secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookSecret?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookSecret>(requestInfo, WebhookSecret.createFromDiscriminatorValue, errorMapping);
    }
    /// Rotates the endpoint's signing secret. The previous secret keeps signing for a 24h grace window so consumers can update without missing deliveries. Returns the new secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
