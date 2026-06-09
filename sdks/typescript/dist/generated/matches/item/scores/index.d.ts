import { type ConfirmScoreBody, type MapScores, type ScoreSubmissionResult, type SubmitScoreBody } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/{matchId}/scores
 */
export interface ScoresRequestBuilder extends BaseRequestBuilder<ScoresRequestBuilder> {
    /**
     * Retrieve all map scores for a match, including a series score summary. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<MapScores>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<MapScores | undefined>;
    /**
     * Confirm a map score submitted by the opposing team. Only the opposing team's captain can confirm (cannot confirm own team's submission). Requires the matches.team_matches:read-write permission.
     * @param body Confirmation payload identifying the map score to confirm.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ScoreSubmissionResult>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    patch(body: ConfirmScoreBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ScoreSubmissionResult | undefined>;
    /**
     * Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
     * @param body Map score submission payload for a single map.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ScoreSubmissionResult>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(body: SubmitScoreBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ScoreSubmissionResult | undefined>;
    /**
     * Retrieve all map scores for a match, including a series score summary. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
    /**
     * Confirm a map score submitted by the opposing team. Only the opposing team's captain can confirm (cannot confirm own team's submission). Requires the matches.team_matches:read-write permission.
     * @param body Confirmation payload identifying the map score to confirm.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPatchRequestInformation(body: ConfirmScoreBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
    /**
     * Submit or overwrite a map score for a match. Only team captains can submit. Requires the matches.team_matches:read-write permission.
     * @param body Map score submission payload for a single map.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: SubmitScoreBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ScoresRequestBuilderUriTemplate = "{+baseurl}/matches/{matchId}/scores";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ScoresRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map