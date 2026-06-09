import { type RemoveLeagueGameResponse } from '../../../../models/index.js';
import { type ToggleRequestBuilder } from './toggle/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/games/{leagueGameId}
 */
export interface WithLeagueGameItemRequestBuilder extends BaseRequestBuilder<WithLeagueGameItemRequestBuilder> {
    /**
     * The toggle property
     */
    get toggle(): ToggleRequestBuilder;
    /**
     * Removes a game from a league and deletes its non-active league configuration. Requires a league-operator key bound to the league and the league games capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<RemoveLeagueGameResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    delete(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<RemoveLeagueGameResponse | undefined>;
    /**
     * Removes a game from a league and deletes its non-active league configuration. Requires a league-operator key bound to the league and the league games capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toDeleteRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithLeagueGameItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/games/{leagueGameId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithLeagueGameItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithLeagueGameItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithLeagueGameItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map