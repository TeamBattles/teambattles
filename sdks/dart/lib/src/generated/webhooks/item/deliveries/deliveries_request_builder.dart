// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './deliveries_get_response.dart';
import './deliveries_request_builder_get_query_parameters.dart';
import './item/with_delivery_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \webhooks\{id}\deliveries
class DeliveriesRequestBuilder extends BaseRequestBuilder<DeliveriesRequestBuilder> {
    /// Gets an item from the teambattles.webhooks.item.deliveries.item collection
    ///  [deliveryId] Delivery-log row id to replay.
    WithDeliveryItemRequestBuilder byDeliveryId(String deliveryId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('deliveryId', () => deliveryId);
        return WithDeliveryItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    DeliveriesRequestBuilder clone() {
        return DeliveriesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DeliveriesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeliveriesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}/deliveries{?cursor*,limit*}", pathParameters) ;
    /// Instantiates a new [DeliveriesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeliveriesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}/deliveries{?cursor*,limit*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DeliveriesGetResponse?> getAsync([void Function(RequestConfiguration<DeliveriesRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DeliveriesGetResponse>(requestInfo, DeliveriesGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DeliveriesRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DeliveriesRequestBuilderGetQueryParameters>(requestConfiguration, () => DeliveriesRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
