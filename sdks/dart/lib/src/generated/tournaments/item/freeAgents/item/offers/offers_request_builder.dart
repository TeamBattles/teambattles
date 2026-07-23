// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_send_offer_body.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agents\{freeAgentId}\offers
class OffersRequestBuilder extends BaseRequestBuilder<OffersRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    OffersRequestBuilder clone() {
        return OffersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OffersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OffersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/offers", pathParameters) ;
    /// Instantiates a new [OffersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OffersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/offers", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament's pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
    ///  [body] Free-agent pickup offer payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentSendOfferBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<TournamentWriteAck>(requestInfo, TournamentWriteAck.createFromDiscriminatorValue, errorMapping);
    }
    /// Sends a pickup offer from one of YOUR teams to a free agent listed in the tournament's pool. Nothing is rostered by this call - it creates a PENDING offer that the agent accepts or declines via POST /tournaments/{identifier}/free-agency/offers/{offerId}/respond.The agent named by freeAgentId must currently be AVAILABLE, and the participant named in the body must be one of your teams and APPROVED in this tournament; you must be its captain, co-captain, or organization owner. Either condition failing answers 400 error_invalid_input or 403 respectively. An agent already rostered anywhere in this tournament cannot be offered to.RESENDING IS SAFE BUT NOT FREE. A live PENDING offer from the same team to the same agent answers 409 error_free_agent_offer_exists - revoke it first if you want to change the message. An offer that was previously declined, revoked, or expired is reused rather than duplicated, so a team and an agent never accumulate offer rows.Both IDs must belong to the tournament in the path; either one from a different tournament answers 404 error_tournament_not_found, identically to one that does not exist. Requires the tournaments actor free_agency capability.
    ///  [body] Free-agent pickup offer payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentSendOfferBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
