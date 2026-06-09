import { type GameStatusUpdateResponse, type LeagueStatusUpdateBody } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/{matchId}/status
 */
export interface StatusRequestBuilder extends BaseRequestBuilder<StatusRequestBuilder> {
    /**
     * Transitions a league match between lifecycle states using a league-operator key bound to the league. Requires the league scores capability.
     * @param body Request body for updating a league match's lifecycle status.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameStatusUpdateResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    patch(body: LeagueStatusUpdateBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameStatusUpdateResponse | undefined>;
    /**
     * Transitions a league match between lifecycle states using a league-operator key bound to the league. Requires the league scores capability.
     * @param body Request body for updating a league match's lifecycle status.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPatchRequestInformation(body: LeagueStatusUpdateBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const StatusRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/matches/{matchId}/status";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const StatusRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map