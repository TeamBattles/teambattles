import { type GameBatchMatchScoresBody, type GameBatchMatchScoresResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/batch-scores
 */
export interface BatchScoresRequestBuilder extends BaseRequestBuilder<BatchScoresRequestBuilder> {
    /**
     * Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key's bound league and returns a per-item result. Requires the league scores capability.
     * @param body Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameBatchMatchScoresResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    post(body: GameBatchMatchScoresBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameBatchMatchScoresResponse | undefined>;
    /**
     * Submits map scores for up to 50 league match items in one request. Each item is independently checked against the key's bound league and returns a per-item result. Requires the league scores capability.
     * @param body Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: GameBatchMatchScoresBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const BatchScoresRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/matches/batch-scores";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const BatchScoresRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map