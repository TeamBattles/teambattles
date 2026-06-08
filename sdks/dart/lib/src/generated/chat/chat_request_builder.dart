// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './messages/messages_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \chat
class ChatRequestBuilder extends BaseRequestBuilder<ChatRequestBuilder> {
    ///  The messages property
    MessagesRequestBuilder get messages {
        return MessagesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ChatRequestBuilder clone() {
        return ChatRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ChatRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChatRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chat", pathParameters) ;
    /// Instantiates a new [ChatRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChatRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chat", {RequestInformation.rawUrlKey : rawUrl}) ;
}
