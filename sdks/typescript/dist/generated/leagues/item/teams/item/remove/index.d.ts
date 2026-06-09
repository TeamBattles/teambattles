import { type RemoveLeagueTeamRequestBody, type RemoveLeagueTeamResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams/{leagueTeamId}/remove
 */
export interface RemoveRequestBuilder extends BaseRequestBuilder<RemoveRequestBuilder> {
    /**
     * Removes an approved team from the league. Pending matches are cancelled and ready or accepted matches are forfeited by the removed team. Requires a league-operator key bound to the league and the league teams capability.
     * @param body Removes an approved team from a league.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<RemoveLeagueTeamResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: RemoveLeagueTeamRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<RemoveLeagueTeamResponse | undefined>;
    /**
     * Removes an approved team from the league. Pending matches are cancelled and ready or accepted matches are forfeited by the removed team. Requires a league-operator key bound to the league and the league teams capability.
     * @param body Removes an approved team from a league.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: RemoveLeagueTeamRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const RemoveRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}/remove";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RemoveRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map