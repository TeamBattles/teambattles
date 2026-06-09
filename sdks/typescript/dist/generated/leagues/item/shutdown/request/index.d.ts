import { type RequestLeagueShutdownResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/shutdown/request
 */
export interface RequestRequestBuilder extends BaseRequestBuilder<RequestRequestBuilder> {
    /**
     * Requests TeamBattles staff review for league shutdown. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority. Staff-only shutdown execution is not exposed by the public API.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<RequestLeagueShutdownResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<RequestLeagueShutdownResponse | undefined>;
    /**
     * Requests TeamBattles staff review for league shutdown. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority. Staff-only shutdown execution is not exposed by the public API.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const RequestRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/shutdown/request";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RequestRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map