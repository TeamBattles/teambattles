// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './create/create_request_builder.dart';
import './item/with_ticket_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\tickets
class TicketsRequestBuilder extends BaseRequestBuilder<TicketsRequestBuilder> {
    ///  The create property
    CreateRequestBuilder get create {
        return CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.leagues.item.tickets.item collection
    ///  [ticketId] League ticket ID.
    WithTicketItemRequestBuilder byTicketId(String ticketId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('ticketId', () => ticketId);
        return WithTicketItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    TicketsRequestBuilder clone() {
        return TicketsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TicketsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TicketsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets", pathParameters) ;
    /// Instantiates a new [TicketsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TicketsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets", {RequestInformation.rawUrlKey : rawUrl}) ;
}
