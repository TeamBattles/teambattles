// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/confirm_score_body.dart';
import '../../../models/error.dart';
import '../../../models/map_scores.dart';
import '../../../models/score_submission_result.dart';
import '../../../models/submit_score_body.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\scores
class ScoresRequestBuilder extends BaseRequestBuilder<ScoresRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ScoresRequestBuilder clone() {
        return ScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ScoresRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ScoresRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/scores", pathParameters) ;
    /// Instantiates a new [ScoresRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ScoresRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/scores", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Retrieve all map scores for a match, including a series score summary. Requires the matches.team_matches:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<MapScores?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<MapScores>(requestInfo, MapScores.createFromDiscriminatorValue, errorMapping);
    }
    /// Confirm a map score submitted by the opposing team. Only the opposing team's captain can confirm (cannot confirm own team's submission). Requires the matches.team_matches:read-write permission.
    ///  [body] Confirmation payload identifying the map score to confirm.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ScoreSubmissionResult?> patchAsync(ConfirmScoreBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ScoreSubmissionResult>(requestInfo, ScoreSubmissionResult.createFromDiscriminatorValue, errorMapping);
    }
    /// Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
    ///  [body] Map score submission payload for a single map.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ScoreSubmissionResult?> postAsync(SubmitScoreBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ScoreSubmissionResult>(requestInfo, ScoreSubmissionResult.createFromDiscriminatorValue, errorMapping);
    }
    /// Retrieve all map scores for a match, including a series score summary. Requires the matches.team_matches:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Confirm a map score submitted by the opposing team. Only the opposing team's captain can confirm (cannot confirm own team's submission). Requires the matches.team_matches:read-write permission.
    ///  [body] Confirmation payload identifying the map score to confirm.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPatchRequestInformation(ConfirmScoreBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.patch, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
    /// Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
    ///  [body] Map score submission payload for a single map.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(SubmitScoreBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
