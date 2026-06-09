import { type DenyLeagueTeamRequestBody, type DenyLeagueTeamResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams/{leagueTeamId}/deny
 */
export interface DenyRequestBuilder extends BaseRequestBuilder<DenyRequestBuilder> {
    /**
     * Denies a pending team application for the league. Requires a league-operator key bound to the league and the league teams capability.
     * @param body Denies a pending league team application.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<DenyLeagueTeamResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: DenyLeagueTeamRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<DenyLeagueTeamResponse | undefined>;
    /**
     * Denies a pending team application for the league. Requires a league-operator key bound to the league and the league teams capability.
     * @param body Denies a pending league team application.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: DenyLeagueTeamRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const DenyRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/deny";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const DenyRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map