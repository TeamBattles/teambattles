// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_message_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \chat\messages
class MessagesRequestBuilder extends BaseRequestBuilder<MessagesRequestBuilder> {
    /// Gets an item from the teambattles.chat.messages.item collection
    ///  [messageId] ID of the chat message to report.
    WithMessageItemRequestBuilder byMessageId(String messageId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('messageId', () => messageId);
        return WithMessageItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    MessagesRequestBuilder clone() {
        return MessagesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MessagesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MessagesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chat/messages", pathParameters) ;
    /// Instantiates a new [MessagesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MessagesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chat/messages", {RequestInformation.rawUrlKey : rawUrl}) ;
}
