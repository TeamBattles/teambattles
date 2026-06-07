// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/update_webhook_body.dart';
import '../../models/webhook_endpoint.dart';
import '../../models/webhook_ok.dart';
import './deliveries/deliveries_request_builder.dart';
import './rotateSecret/rotate_secret_request_builder.dart';
import './test/test_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \webhooks\{id}
class WebhooksItemRequestBuilder extends BaseRequestBuilder<WebhooksItemRequestBuilder> {
    ///  The deliveries property
    DeliveriesRequestBuilder get deliveries {
        return DeliveriesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The rotateSecret property
    RotateSecretRequestBuilder get rotateSecret {
        return RotateSecretRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The test property
    TestRequestBuilder get test {
        return TestRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WebhooksItemRequestBuilder clone() {
        return WebhooksItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WebhooksItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WebhooksItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}", pathParameters) ;
    /// Instantiates a new [WebhooksItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WebhooksItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookOk?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookOk>(requestInfo, WebhookOk.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookEndpoint?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookEndpoint>(requestInfo, WebhookEndpoint.createFromDiscriminatorValue, errorMapping);
    }
    /// Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
    ///  [body] Partial update of a webhook endpoint.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookOk?> patchAsync(UpdateWebhookBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookOk>(requestInfo, WebhookOk.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
    ///  [body] Partial update of a webhook endpoint.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPatchRequestInformation(UpdateWebhookBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.patch, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
