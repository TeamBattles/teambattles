import { type ActivateLeagueSeasonResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/seasons/{seasonId}/activate
 */
export interface ActivateRequestBuilder extends BaseRequestBuilder<ActivateRequestBuilder> {
    /**
     * Activates an upcoming league season. Requires the league seasons capability. Replays are not deduped; existing state guards return the current state error if the season is no longer upcoming.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ActivateLeagueSeasonResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ActivateLeagueSeasonResponse | undefined>;
    /**
     * Activates an upcoming league season. Requires the league seasons capability. Replays are not deduped; existing state guards return the current state error if the season is no longer upcoming.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ActivateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/seasons/{seasonId}/activate";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ActivateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map