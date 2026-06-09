import { type ApproveLeagueTeamResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams/{leagueTeamId}/approve
 */
export interface ApproveRequestBuilder extends BaseRequestBuilder<ApproveRequestBuilder> {
    /**
     * Approves a pending team application for the league. Requires a league-operator key bound to the league and the league teams capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApproveLeagueTeamResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApproveLeagueTeamResponse | undefined>;
    /**
     * Approves a pending team application for the league. Requires a league-operator key bound to the league and the league teams capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ApproveRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/approve";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ApproveRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map