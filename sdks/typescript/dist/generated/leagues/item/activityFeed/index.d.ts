import { type LeagueActivityFeedRequestBody, type LeagueActivityFeedResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/activity-feed
 */
export interface ActivityFeedRequestBuilder extends BaseRequestBuilder<ActivityFeedRequestBuilder> {
    /**
     * Returns recent league activity entries. Requires a league-operator key bound to the league and leagues.league_admin:read.
     * @param body Cursor pagination options for a league activity feed.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueActivityFeedResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: LeagueActivityFeedRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueActivityFeedResponse | undefined>;
    /**
     * Returns recent league activity entries. Requires a league-operator key bound to the league and leagues.league_admin:read.
     * @param body Cursor pagination options for a league activity feed.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: LeagueActivityFeedRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ActivityFeedRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/activity-feed";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ActivityFeedRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map