// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/webhook_replay_result.dart';

/// auto generated
/// Builds and executes requests for operations under \webhooks\{id}\deliveries\{deliveryId}\replay
class ReplayRequestBuilder extends BaseRequestBuilder<ReplayRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ReplayRequestBuilder clone() {
        return ReplayRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ReplayRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ReplayRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}/replay", pathParameters) ;
    /// Instantiates a new [ReplayRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ReplayRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}/replay", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Re-queues a dead-lettered delivery for a fresh attempt. Delivered, in-flight, or still-retrying (failed) deliveries cannot be replayed (409). Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookReplayResult?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookReplayResult>(requestInfo, WebhookReplayResult.createFromDiscriminatorValue, errorMapping);
    }
    /// Re-queues a dead-lettered delivery for a fresh attempt. Delivered, in-flight, or still-retrying (failed) deliveries cannot be replayed (409). Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
