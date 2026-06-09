import { type MarkMatchReadyRequestBody, type MarkMatchReadyResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/{matchId}/ready
 */
export interface ReadyRequestBuilder extends BaseRequestBuilder<ReadyRequestBuilder> {
    /**
     * Marks a participating team ready as the personal API key owner. The owner must captain the team. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Marks one participating team ready as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<MarkMatchReadyResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: MarkMatchReadyRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<MarkMatchReadyResponse | undefined>;
    /**
     * Marks a participating team ready as the personal API key owner. The owner must captain the team. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Marks one participating team ready as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: MarkMatchReadyRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ReadyRequestBuilderUriTemplate = "{+baseurl}/matches/{matchId}/ready";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ReadyRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map