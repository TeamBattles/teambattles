// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/create_ticket_request_body.dart';
import '../models/create_ticket_response.dart';
import '../models/error.dart';
import './item/with_ticket_item_request_builder.dart';
import './tickets_get_response.dart';
import './tickets_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \tickets
class TicketsRequestBuilder extends BaseRequestBuilder<TicketsRequestBuilder> {
    /// Gets an item from the teambattles.tickets.item collection
    ///  [ticketId] Ticket ID.
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
    TicketsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "", pathParameters) ;
    /// Instantiates a new [TicketsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TicketsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TicketsGetResponse?> getAsync([void Function(RequestConfiguration<TicketsRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TicketsGetResponse>(requestInfo, TicketsGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates a support ticket owned by the API key owner. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
    ///  [body] Creates a self-filed support ticket owned by the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CreateTicketResponse?> postAsync(CreateTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<CreateTicketResponse>(requestInfo, CreateTicketResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<TicketsRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<TicketsRequestBuilderGetQueryParameters>(requestConfiguration, () => TicketsRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Creates a support ticket owned by the API key owner. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
    ///  [body] Creates a self-filed support ticket owned by the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CreateTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
