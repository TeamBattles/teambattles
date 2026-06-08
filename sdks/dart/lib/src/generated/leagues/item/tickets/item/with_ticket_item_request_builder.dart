// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/update_league_ticket_request_body.dart';
import '../../../../models/update_league_ticket_response.dart';
import './escalate/escalate_request_builder.dart';
import './reply/reply_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\tickets\{ticketId}
class WithTicketItemRequestBuilder extends BaseRequestBuilder<WithTicketItemRequestBuilder> {
    ///  The escalate property
    EscalateRequestBuilder get escalate {
        return EscalateRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The reply property
    ReplyRequestBuilder get reply {
        return ReplyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithTicketItemRequestBuilder clone() {
        return WithTicketItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithTicketItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithTicketItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}", pathParameters) ;
    /// Instantiates a new [WithTicketItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithTicketItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
    ///  [body] Updates league ticket status, priority, or assignment.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<UpdateLeagueTicketResponse?> patchAsync(UpdateLeagueTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<UpdateLeagueTicketResponse>(requestInfo, UpdateLeagueTicketResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
    ///  [body] Updates league ticket status, priority, or assignment.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPatchRequestInformation(UpdateLeagueTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.patch, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
