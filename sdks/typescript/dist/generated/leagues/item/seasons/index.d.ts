import { type LeagueSeasons, type SeasonsRequestBody } from '../../../models/index.js';
import { type CreateRequestBuilder } from './create/index.js';
import { type WithSeasonItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/seasons
 */
export interface SeasonsRequestBuilder extends BaseRequestBuilder<SeasonsRequestBuilder> {
    /**
     * The create property
     */
    get create(): CreateRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item.seasons.item collection
     * @param seasonId League season ID.
     * @returns {WithSeasonItemRequestBuilder}
     */
    bySeasonId(seasonId: string): WithSeasonItemRequestBuilder;
    /**
     * Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
     * @param body Game and status filters for league seasons.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueSeasons>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(body: SeasonsRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueSeasons | undefined>;
    /**
     * Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
     * @param body Game and status filters for league seasons.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: SeasonsRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const SeasonsRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/seasons";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const SeasonsRequestBuilderNavigationMetadata: Record<Exclude<keyof SeasonsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const SeasonsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map