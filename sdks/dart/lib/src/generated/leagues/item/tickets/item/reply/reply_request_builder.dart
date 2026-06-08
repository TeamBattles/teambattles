// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/reply_league_ticket_request_body.dart';
import '../../../../../models/reply_league_ticket_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\tickets\{ticketId}\reply
class ReplyRequestBuilder extends BaseRequestBuilder<ReplyRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ReplyRequestBuilder clone() {
        return ReplyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ReplyRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ReplyRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}/reply", pathParameters) ;
    /// Instantiates a new [ReplyRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ReplyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}/reply", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Adds a reply or internal note to a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
    ///  [body] Adds a reply or internal note to a league support ticket.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ReplyLeagueTicketResponse?> postAsync(ReplyLeagueTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ReplyLeagueTicketResponse>(requestInfo, ReplyLeagueTicketResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Adds a reply or internal note to a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
    ///  [body] Adds a reply or internal note to a league support ticket.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ReplyLeagueTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
