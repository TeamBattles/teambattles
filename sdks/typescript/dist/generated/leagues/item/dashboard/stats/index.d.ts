import { type LeagueDashboardStatsResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/dashboard/stats
 */
export interface StatsRequestBuilder extends BaseRequestBuilder<StatsRequestBuilder> {
    /**
     * Returns aggregate league admin dashboard counts. Requires a league-operator key bound to the league and leagues.league_admin:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueDashboardStatsResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueDashboardStatsResponse | undefined>;
    /**
     * Returns aggregate league admin dashboard counts. Requires a league-operator key bound to the league and leagues.league_admin:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const StatsRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/dashboard/stats";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const StatsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map