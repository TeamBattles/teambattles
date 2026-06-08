// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './batchScores/batch_scores_request_builder.dart';
import './item/with_match_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\matches
class MatchesRequestBuilder extends BaseRequestBuilder<MatchesRequestBuilder> {
    ///  The batchScores property
    BatchScoresRequestBuilder get batchScores {
        return BatchScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.leagues.item.matches.item collection
    ///  [matchId] Match ID.
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
    MatchesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches", pathParameters) ;
    /// Instantiates a new [MatchesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MatchesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches", {RequestInformation.rawUrlKey : rawUrl}) ;
}
