// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/send_chat_message_request_body.dart';
import '../../../models/send_chat_message_response.dart';
import './chat_get_response.dart';
import './chat_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\chat
class ChatRequestBuilder extends BaseRequestBuilder<ChatRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ChatRequestBuilder clone() {
        return ChatRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ChatRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChatRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "", pathParameters) ;
    /// Instantiates a new [ChatRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChatRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ChatGetResponse?> getAsync([void Function(RequestConfiguration<ChatRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ChatGetResponse>(requestInfo, ChatGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Sends a message to a match's chat room as the API key owner. The owner must be a participant of the match; a non-participant receives 403. Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
    ///  [body] Sends a message to the match chat room as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<SendChatMessageResponse?> postAsync(SendChatMessageRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<SendChatMessageResponse>(requestInfo, SendChatMessageResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ChatRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ChatRequestBuilderGetQueryParameters>(requestConfiguration, () => ChatRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Sends a message to a match's chat room as the API key owner. The owner must be a participant of the match; a non-participant receives 403. Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
    ///  [body] Sends a message to the match chat room as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(SendChatMessageRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
