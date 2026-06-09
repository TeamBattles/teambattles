import { type AcceptMatchRequestBody, type AcceptMatchResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/{matchId}/accept
 */
export interface AcceptRequestBuilder extends BaseRequestBuilder<AcceptRequestBuilder> {
    /**
     * Creates a match acceptance request as the personal API key owner. The owner must captain the accepting team and the proposed roster must satisfy existing match rules. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Creates a match acceptance request as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<AcceptMatchResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: AcceptMatchRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<AcceptMatchResponse | undefined>;
    /**
     * Creates a match acceptance request as the personal API key owner. The owner must captain the accepting team and the proposed roster must satisfy existing match rules. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Creates a match acceptance request as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: AcceptMatchRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const AcceptRequestBuilderUriTemplate = "{+baseurl}/matches/{matchId}/accept";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const AcceptRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map