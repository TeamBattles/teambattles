// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/escalate_league_ticket_request_body.dart';
import '../../../../../models/escalate_league_ticket_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\tickets\{ticketId}\escalate
class EscalateRequestBuilder extends BaseRequestBuilder<EscalateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    EscalateRequestBuilder clone() {
        return EscalateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [EscalateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    EscalateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}/escalate", pathParameters) ;
    /// Instantiates a new [EscalateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    EscalateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/tickets/{ticketId}/escalate", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Escalates a league-scoped support ticket to TeamBattles staff. Requires a league-operator key bound to the league and the league tickets capability.
    ///  [body] Escalates a league support ticket to TeamBattles staff.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<EscalateLeagueTicketResponse?> postAsync(EscalateLeagueTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<EscalateLeagueTicketResponse>(requestInfo, EscalateLeagueTicketResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Escalates a league-scoped support ticket to TeamBattles staff. Requires a league-operator key bound to the league and the league tickets capability.
    ///  [body] Escalates a league support ticket to TeamBattles staff.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(EscalateLeagueTicketRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
