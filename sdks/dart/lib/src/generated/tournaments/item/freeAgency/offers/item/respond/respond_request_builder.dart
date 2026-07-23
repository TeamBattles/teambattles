// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/tournament_offer_respond_body.dart';
import '../../../../../../models/tournament_offer_respond_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agency\offers\{offerId}\respond
class RespondRequestBuilder extends BaseRequestBuilder<RespondRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RespondRequestBuilder clone() {
        return RespondRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RespondRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RespondRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/respond", pathParameters) ;
    /// Instantiates a new [RespondRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RespondRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers/{offerId}/respond", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Answers a pickup offer addressed to you as a free agent. You must be the offer's recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team's tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
    ///  [body] Free agent's response to a pickup offer.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentOfferRespondResponse?> postAsync(TournamentOfferRespondBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<TournamentOfferRespondResponse>(requestInfo, TournamentOfferRespondResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Answers a pickup offer addressed to you as a free agent. You must be the offer's recipient - an offerId addressed to anyone else answers 403 - and the offer must still be PENDING, or the request answers 409 error_free_agent_offer_not_pending.ACCEPTING JOINS THE TEAM. Your pool row becomes PICKED_UP, you are added to the offering team's tournament roster as a FREE_AGENT entry, and every other PENDING offer addressed to you in this tournament is expired - you are off the market. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached offer list. Leaving that roster is also the only way back to AVAILABLE; the leave-pool endpoint refuses while you are rostered.AN OFFER CAN LAPSE BETWEEN BEING SENT AND ANSWERED - the tournament may have started, you may have been picked up elsewhere, or the offering team may have left. When accepting finds any of those, the offer is durably marked EXPIRED and the request answers 409 error_free_agent_offer_not_pending, the same code as an already-answered offer. It never answers 200 with accepted false, so a client can rely on a 2xx meaning the pickup really happened. Retrying answers identically.DECLINING IS ALWAYS AVAILABLE and notifies the captain who offered. The competitive-ban gate applies only to acceptance: a banned agent can clear an offer but receives 403 error_competitive_banned if they try to accept it.Offer IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor free_agency capability.
    ///  [body] Free agent's response to a pickup offer.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentOfferRespondBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
