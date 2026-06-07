// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/create_webhook_body.dart';
import '../models/error.dart';
import '../models/webhook_list_response.dart';
import '../models/webhook_secret.dart';
import './item/webhooks_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \webhooks
class WebhooksRequestBuilder extends BaseRequestBuilder<WebhooksRequestBuilder> {
    /// Gets an item from the teambattles.webhooks.item collection
    ///  [id] Webhook endpoint id.
    WebhooksItemRequestBuilder byId(String id) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('id', () => id);
        return WebhooksItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WebhooksRequestBuilder clone() {
        return WebhooksRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WebhooksRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WebhooksRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks", pathParameters) ;
    /// Instantiates a new [WebhooksRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WebhooksRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/webhooks", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Lists the API key's webhook endpoints within its derived scope. Secret material is never returned. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookListResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookListResponse>(requestInfo, WebhookListResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates a webhook endpoint in the API key's derived scope (personal -> user, developer-app -> game, league-operator -> league). Returns the signing secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
    ///  [body] Create a webhook endpoint in the caller's scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<WebhookSecret?> postAsync(CreateWebhookBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<WebhookSecret>(requestInfo, WebhookSecret.createFromDiscriminatorValue, errorMapping);
    }
    /// Lists the API key's webhook endpoints within its derived scope. Secret material is never returned. Requires the webhooks.manage permission and the webhooks feature.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Creates a webhook endpoint in the API key's derived scope (personal -> user, developer-app -> game, league-operator -> league). Returns the signing secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
    ///  [body] Create a webhook endpoint in the caller's scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CreateWebhookBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
