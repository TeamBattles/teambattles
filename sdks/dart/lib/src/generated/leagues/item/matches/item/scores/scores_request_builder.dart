// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/game_batch_scores_body.dart';
import '../../../../../models/game_batch_scores_response.dart';
import './item/with_map_index_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\matches\{matchId}\scores
class ScoresRequestBuilder extends BaseRequestBuilder<ScoresRequestBuilder> {
    /// Gets an item from the teambattles.leagues.item.matches.item.scores.item collection
    ///  [mapIndex] Zero-based index of the map within the series.
    WithMapIndexItemRequestBuilder byMapIndex(String mapIndex) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('mapIndex', () => mapIndex);
        return WithMapIndexItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ScoresRequestBuilder clone() {
        return ScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ScoresRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ScoresRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}/scores", pathParameters) ;
    /// Instantiates a new [ScoresRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ScoresRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}/scores", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Submits scores for one or more maps in a league match; league-operator scores are auto-confirmed. Requires the league scores capability.
    ///  [body] Request body for submitting one or more map scores in a single call.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameBatchScoresResponse?> postAsync(GameBatchScoresBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameBatchScoresResponse>(requestInfo, GameBatchScoresResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Submits scores for one or more maps in a league match; league-operator scores are auto-confirmed. Requires the league scores capability.
    ///  [body] Request body for submitting one or more map scores in a single call.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GameBatchScoresBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
