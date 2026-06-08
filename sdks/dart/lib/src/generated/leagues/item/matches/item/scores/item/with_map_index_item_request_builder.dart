// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/game_single_map_score_body.dart';
import '../../../../../../models/game_single_map_score_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\matches\{matchId}\scores\{mapIndex}
class WithMapIndexItemRequestBuilder extends BaseRequestBuilder<WithMapIndexItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithMapIndexItemRequestBuilder clone() {
        return WithMapIndexItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithMapIndexItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMapIndexItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}/scores/{mapIndex}", pathParameters) ;
    /// Instantiates a new [WithMapIndexItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMapIndexItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}/scores/{mapIndex}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Submits the score for one map in a league match; league-operator scores are auto-confirmed. Requires the league scores capability.
    ///  [body] Request body for submitting a single map's score (mapIndex comes from the path).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameSingleMapScoreResponse?> postAsync(GameSingleMapScoreBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameSingleMapScoreResponse>(requestInfo, GameSingleMapScoreResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Submits the score for one map in a league match; league-operator scores are auto-confirmed. Requires the league scores capability.
    ///  [body] Request body for submitting a single map's score (mapIndex comes from the path).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GameSingleMapScoreBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
