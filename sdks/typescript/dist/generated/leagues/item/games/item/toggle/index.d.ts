import { type ToggleLeagueGameRequestBody, type ToggleLeagueGameResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/games/{leagueGameId}/toggle
 */
export interface ToggleRequestBuilder extends BaseRequestBuilder<ToggleRequestBuilder> {
    /**
     * Activates or deactivates a league game. Deactivation cancels pending, accepted, and ready matches for that league game. Requires the league games capability.
     * @param body Toggles a league game.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ToggleLeagueGameResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: ToggleLeagueGameRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ToggleLeagueGameResponse | undefined>;
    /**
     * Activates or deactivates a league game. Deactivation cancels pending, accepted, and ready matches for that league game. Requires the league games capability.
     * @param body Toggles a league game.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: ToggleLeagueGameRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ToggleRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/games/{leagueGameId}/toggle";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ToggleRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map