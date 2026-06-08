// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/report_chat_message_request_body.dart';
import '../../../../models/report_chat_message_response.dart';

/// auto generated
/// Builds and executes requests for operations under \chat\messages\{messageId}\report
class ReportRequestBuilder extends BaseRequestBuilder<ReportRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ReportRequestBuilder clone() {
        return ReportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ReportRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ReportRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chat/messages/{messageId}/report", pathParameters) ;
    /// Instantiates a new [ReportRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ReportRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chat/messages/{messageId}/report", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message's chat room; a non-participant receives 403. System messages and the owner's own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
    ///  [body] Reports a chat message for staff moderation review.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ReportChatMessageResponse?> postAsync(ReportChatMessageRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<ReportChatMessageResponse>(requestInfo, ReportChatMessageResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message's chat room; a non-participant receives 403. System messages and the owner's own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
    ///  [body] Reports a chat message for staff moderation review.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ReportChatMessageRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
