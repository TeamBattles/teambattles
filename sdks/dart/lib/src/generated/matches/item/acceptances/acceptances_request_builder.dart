// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_acceptance_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\acceptances
class AcceptancesRequestBuilder extends BaseRequestBuilder<AcceptancesRequestBuilder> {
    /// Gets an item from the teambattles.matches.item.acceptances.item collection
    ///  [acceptanceId] Match acceptance ID.
    WithAcceptanceItemRequestBuilder byAcceptanceId(String acceptanceId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('acceptanceId', () => acceptanceId);
        return WithAcceptanceItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    AcceptancesRequestBuilder clone() {
        return AcceptancesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AcceptancesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AcceptancesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances", pathParameters) ;
    /// Instantiates a new [AcceptancesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AcceptancesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances", {RequestInformation.rawUrlKey : rawUrl}) ;
}
