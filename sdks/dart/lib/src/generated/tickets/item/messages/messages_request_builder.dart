// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/add_ticket_message_request_body.dart';
import '../../../models/add_ticket_message_response.dart';
import '../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \tickets\{ticketId}\messages
class MessagesRequestBuilder extends BaseRequestBuilder<MessagesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    MessagesRequestBuilder clone() {
        return MessagesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MessagesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MessagesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tickets/{ticketId}/messages", pathParameters) ;
    /// Instantiates a new [MessagesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MessagesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tickets/{ticketId}/messages", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Adds a reply message to one of the API key owner's tickets. Closed tickets are rejected. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
    ///  [body] Adds a reply message to one of the API key owner's tickets.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AddTicketMessageResponse?> postAsync(AddTicketMessageRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<AddTicketMessageResponse>(requestInfo, AddTicketMessageResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Adds a reply message to one of the API key owner's tickets. Closed tickets are rejected. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
    ///  [body] Adds a reply message to one of the API key owner's tickets.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AddTicketMessageRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
