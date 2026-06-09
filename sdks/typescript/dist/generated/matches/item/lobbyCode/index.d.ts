import { type UpdateLobbyCodeRequestBody, type UpdateLobbyCodeResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/{matchId}/lobby-code
 */
export interface LobbyCodeRequestBuilder extends BaseRequestBuilder<LobbyCodeRequestBuilder> {
    /**
     * Sets or updates the lobby code as the personal API key owner. The owner must captain one participating team. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Sets or updates the match lobby code as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<UpdateLobbyCodeResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: UpdateLobbyCodeRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<UpdateLobbyCodeResponse | undefined>;
    /**
     * Sets or updates the lobby code as the personal API key owner. The owner must captain one participating team. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Sets or updates the match lobby code as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: UpdateLobbyCodeRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const LobbyCodeRequestBuilderUriTemplate = "{+baseurl}/matches/{matchId}/lobby-code";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const LobbyCodeRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map