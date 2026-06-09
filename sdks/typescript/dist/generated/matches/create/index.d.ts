import { type CreateMatchRequestBody, type CreateMatchResponse } from '../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/create
 */
export interface CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /**
     * Creates a new match as the personal API key owner. The owner must captain the creator team and the active roster must be members of that team. League and challenge rules are enforced exactly as in the web app. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Creates a new match as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<CreateMatchResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: CreateMatchRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<CreateMatchResponse | undefined>;
    /**
     * Creates a new match as the personal API key owner. The owner must captain the creator team and the active roster must be members of that team. League and challenge rules are enforced exactly as in the web app. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Creates a new match as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: CreateMatchRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const CreateRequestBuilderUriTemplate = "{+baseurl}/matches/create";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const CreateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map