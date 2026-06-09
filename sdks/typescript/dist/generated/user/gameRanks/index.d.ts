import { type GameRankListResponse, type GameRankUpsertBody, type GameRankUpsertResponse } from '../../models/index.js';
import { type WithGameItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /user/game-ranks
 */
export interface GameRanksRequestBuilder extends BaseRequestBuilder<GameRanksRequestBuilder> {
    /**
     * Gets an item from the teambattles.user.gameRanks.item collection
     * @param gameId Game definition ID of the rank to delete.
     * @returns {WithGameItemRequestBuilder}
     */
    byGameId(gameId: string): WithGameItemRequestBuilder;
    /**
     * Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameRankListResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameRankListResponse | undefined>;
    /**
     * Creates or overwrites the API key owner's rank for a single (gameId, mode) slot, forcing source to "api". The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param body Upsert the API key owner's rank for one (gameId, mode) slot.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameRankUpsertResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: GameRankUpsertBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameRankUpsertResponse | undefined>;
    /**
     * Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
    /**
     * Creates or overwrites the API key owner's rank for a single (gameId, mode) slot, forcing source to "api". The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param body Upsert the API key owner's rank for one (gameId, mode) slot.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: GameRankUpsertBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const GameRanksRequestBuilderUriTemplate = "{+baseurl}/user/game-ranks";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const GameRanksRequestBuilderNavigationMetadata: Record<Exclude<keyof GameRanksRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const GameRanksRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map