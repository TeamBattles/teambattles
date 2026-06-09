import { type LeagueGames } from '../../../models/index.js';
import { type AddRequestBuilder } from './add/index.js';
import { type WithLeagueGameItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/games
 */
export interface GamesRequestBuilder extends BaseRequestBuilder<GamesRequestBuilder> {
    /**
     * The add property
     */
    get add(): AddRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item.games.item collection
     * @param leagueGameId League game link ID.
     * @returns {WithLeagueGameItemRequestBuilder}
     */
    byLeagueGameId(leagueGameId: string): WithLeagueGameItemRequestBuilder;
    /**
     * Returns games configured for a league resolved by slug or Convex ID. Requires leagues.league_public:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueGames>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueGames | undefined>;
    /**
     * Returns games configured for a league resolved by slug or Convex ID. Requires leagues.league_public:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const GamesRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/games";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const GamesRequestBuilderNavigationMetadata: Record<Exclude<keyof GamesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const GamesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map