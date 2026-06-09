import { type CancelMatchRequestBody, type CancelMatchResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/{matchId}/cancel
 */
export interface CancelRequestBuilder extends BaseRequestBuilder<CancelRequestBuilder> {
    /**
     * Cancels a match as the personal API key owner. The owner must be able to manage the match (captain a participating team or be an admin). Past the league grace period an accepted league match is treated as a forfeit. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Cancels the match as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<CancelMatchResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: CancelMatchRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<CancelMatchResponse | undefined>;
    /**
     * Cancels a match as the personal API key owner. The owner must be able to manage the match (captain a participating team or be an admin). Past the league grace period an accepted league match is treated as a forfeit. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Cancels the match as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: CancelMatchRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const CancelRequestBuilderUriTemplate = "{+baseurl}/matches/{matchId}/cancel";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const CancelRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map