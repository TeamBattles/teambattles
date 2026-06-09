import { type ApiGameCatalogResponse } from '../models/index.js';
import { type GamesItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /games
 */
export interface GamesRequestBuilder extends BaseRequestBuilder<GamesRequestBuilder> {
    /**
     * Gets an item from the teambattles.games.item collection
     * @param id Static public game ID/slug.
     * @returns {GamesItemRequestBuilder}
     */
    byId(id: string): GamesItemRequestBuilder;
    /**
     * Returns the static public game catalog and objective definitions. Requires a valid API key, but no additional permission scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApiGameCatalogResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApiGameCatalogResponse | undefined>;
    /**
     * Returns the static public game catalog and objective definitions. Requires a valid API key, but no additional permission scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const GamesRequestBuilderUriTemplate = "{+baseurl}/games";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const GamesRequestBuilderNavigationMetadata: Record<Exclude<keyof GamesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const GamesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map