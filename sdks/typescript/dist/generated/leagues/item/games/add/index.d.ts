import { type AddLeagueGameRequestBody, type LeagueGameWriteResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/games/add
 */
export interface AddRequestBuilder extends BaseRequestBuilder<AddRequestBuilder> {
    /**
     * Adds an active game to a league. Requires a league-operator key bound to the league and the league games capability.
     * @param body Adds a league game.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueGameWriteResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: AddLeagueGameRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueGameWriteResponse | undefined>;
    /**
     * Adds an active game to a league. Requires a league-operator key bound to the league and the league games capability.
     * @param body Adds a league game.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: AddLeagueGameRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const AddRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/games/add";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const AddRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map