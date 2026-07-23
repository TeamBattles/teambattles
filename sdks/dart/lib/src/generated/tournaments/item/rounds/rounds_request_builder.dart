// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_round_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\rounds
class RoundsRequestBuilder extends BaseRequestBuilder<RoundsRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.rounds.item collection
    ///  [roundId] Tournament round id.
    WithRoundItemRequestBuilder byRoundId(String roundId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('roundId', () => roundId);
        return WithRoundItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    RoundsRequestBuilder clone() {
        return RoundsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RoundsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RoundsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/rounds", pathParameters) ;
    /// Instantiates a new [RoundsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RoundsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/rounds", {RequestInformation.rawUrlKey : rawUrl}) ;
}
