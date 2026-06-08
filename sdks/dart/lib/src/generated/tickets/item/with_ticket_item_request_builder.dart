// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/ticket_detail.dart';
import './messages/messages_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tickets\{ticketId}
class WithTicketItemRequestBuilder extends BaseRequestBuilder<WithTicketItemRequestBuilder> {
    ///  The messages property
    MessagesRequestBuilder get messages {
        return MessagesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithTicketItemRequestBuilder clone() {
        return WithTicketItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithTicketItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithTicketItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tickets/{ticketId}", pathParameters) ;
    /// Instantiates a new [WithTicketItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithTicketItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tickets/{ticketId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns one of the API key owner's tickets and its message thread (internal staff notes excluded). A ticket the owner does not own reads as 404. Requires the tickets.read scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TicketDetail?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TicketDetail>(requestInfo, TicketDetail.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns one of the API key owner's tickets and its message thread (internal staff notes excluded). A ticket the owner does not own reads as 404. Requires the tickets.read scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
