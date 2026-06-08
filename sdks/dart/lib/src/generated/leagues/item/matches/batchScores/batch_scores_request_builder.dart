// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/game_batch_match_scores_body.dart';
import '../../../../models/game_batch_match_scores_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\matches\batch-scores
class BatchScoresRequestBuilder extends BaseRequestBuilder<BatchScoresRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    BatchScoresRequestBuilder clone() {
        return BatchScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [BatchScoresRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BatchScoresRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/batch-scores", pathParameters) ;
    /// Instantiates a new [BatchScoresRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BatchScoresRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/batch-scores", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key's bound league and returns a per-item result. Requires the league scores capability.
    ///  [body] Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameBatchMatchScoresResponse?> postAsync(GameBatchMatchScoresBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameBatchMatchScoresResponse>(requestInfo, GameBatchMatchScoresResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key's bound league and returns a per-item result. Requires the league scores capability.
    ///  [body] Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GameBatchMatchScoresBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
