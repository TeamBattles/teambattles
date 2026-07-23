// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_offer_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agency\offers
class OffersRequestBuilder extends BaseRequestBuilder<OffersRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.freeAgency.offers.item collection
    ///  [offerId] Free-agent pickup offer ID, as returned by GET /tournaments/{identifier}/me - inbound offers under `offers`.
    WithOfferItemRequestBuilder byOfferId(String offerId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('offerId', () => offerId);
        return WithOfferItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    OffersRequestBuilder clone() {
        return OffersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OffersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OffersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers", pathParameters) ;
    /// Instantiates a new [OffersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OffersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/offers", {RequestInformation.rawUrlKey : rawUrl}) ;
}
