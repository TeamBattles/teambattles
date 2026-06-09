import { type GameStatusUpdateBody, type GameStatusUpdateResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /game/matches/{matchId}/status
 */
export interface StatusRequestBuilder extends BaseRequestBuilder<StatusRequestBuilder> {
    /**
     * Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission.
     * @param body Request body for updating a match's lifecycle status.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameStatusUpdateResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     */
    patch(body: GameStatusUpdateBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameStatusUpdateResponse | undefined>;
    /**
     * Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission.
     * @param body Request body for updating a match's lifecycle status.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPatchRequestInformation(body: GameStatusUpdateBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const StatusRequestBuilderUriTemplate = "{+baseurl}/game/matches/{matchId}/status";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const StatusRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map