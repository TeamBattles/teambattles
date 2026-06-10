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
    /// Retrieve every map score for a match plus a series summary. Returns the full unpaginated list of map scores (no cursor or limit) and a seriesScore counting map wins per side, computed only from CONFIRMED maps and awarding a map to the side with the strictly higher score (equal scores count for neither). Each score's scoreStatus is CONFIRMED or PENDING; submittedBy, confirmedBy, and createdAt may be null. Screenshot URLs are suppressed (empty array) for any score whose API-uploaded image has not passed content moderation. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read. The caller must be an active member of one of the match's two teams; non-participants receive 403, unless they hold a TeamBattles staff role, which can read any match's scores.
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
    /// Retrieve every map score for a match plus a series summary. Returns the full unpaginated list of map scores (no cursor or limit) and a seriesScore counting map wins per side, computed only from CONFIRMED maps and awarding a map to the side with the strictly higher score (equal scores count for neither). Each score's scoreStatus is CONFIRMED or PENDING; submittedBy, confirmedBy, and createdAt may be null. Screenshot URLs are suppressed (empty array) for any score whose API-uploaded image has not passed content moderation. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read. The caller must be an active member of one of the match's two teams; non-participants receive 403, unless they hold a TeamBattles staff role, which can read any match's scores.
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
