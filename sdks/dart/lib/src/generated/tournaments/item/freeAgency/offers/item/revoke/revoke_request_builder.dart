// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agency\offers\{offerId}\revoke
class RevokeRequestBuilder extends BaseRequestBuilder<RevokeRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RevokeRequestBuilder clone() {
        return RevokeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RevokeRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RevokeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/revoke", pathParameters) ;
    /// Instantiates a new [RevokeRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RevokeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/revoke", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
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
    /// Withdraws a pending free-agent pickup offer that one of your teams sent. Authority is the SENDING side of the offer: you must be the captain, co-captain, or organization owner of the team that made it, which is the mirror of the respond endpoint, where only the agent the offer is addressed to may act.The offer must still be PENDING. One that has been accepted, declined, expired, or already revoked answers 409 error_free_agent_offer_not_pending - so unlike check-in this is not retry-safe, and a second call after a successful one is a conflict rather than a no-op. Use it to free yourself to send a fresh offer to the same agent, which is otherwise blocked by 409 error_free_agent_offer_exists.Revoking is silent: the agent is not notified, the offer simply disappears from their inbox. Nothing is rostered or released, because a pending offer never rostered anyone.An offerId belonging to a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor free_agency capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
