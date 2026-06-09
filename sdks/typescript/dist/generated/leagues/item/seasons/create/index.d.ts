import { type CreateSeasonRequestBody, type CreateSeasonResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/seasons/create
 */
export interface CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /**
     * Creates an upcoming season for a league game. Requires the league seasons capability. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original season id, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param body League season creation payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<CreateSeasonResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: CreateSeasonRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<CreateSeasonResponse | undefined>;
    /**
     * Creates an upcoming season for a league game. Requires the league seasons capability. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original season id, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param body League season creation payload.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: CreateSeasonRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const CreateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/seasons/create";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const CreateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map