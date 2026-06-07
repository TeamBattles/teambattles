// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './replay/replay_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \webhooks\{id}\deliveries\{deliveryId}
class WithDeliveryItemRequestBuilder extends BaseRequestBuilder<WithDeliveryItemRequestBuilder> {
    ///  The replay property
    ReplayRequestBuilder get replay {
        return ReplayRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithDeliveryItemRequestBuilder clone() {
        return WithDeliveryItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithDeliveryItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithDeliveryItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}", pathParameters) ;
    /// Instantiates a new [WithDeliveryItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithDeliveryItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
