// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_match_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \matches
class MatchesRequestBuilder extends BaseRequestBuilder<MatchesRequestBuilder> {
    /// Gets an item from the teambattles.matches.item collection
    ///  [matchId] Match id.
    WithMatchItemRequestBuilder byMatchId(String matchId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('matchId', () => matchId);
        return WithMatchItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    MatchesRequestBuilder clone() {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MatchesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MatchesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches", pathParameters) ;
    /// Instantiates a new [MatchesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MatchesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches", {RequestInformation.rawUrlKey : rawUrl}) ;
}
