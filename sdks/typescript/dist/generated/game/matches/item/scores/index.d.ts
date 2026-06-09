import { type GameBatchScoresBody, type GameBatchScoresResponse, type GameScoresResponse } from '../../../../models/index.js';
import { type WithMapIndexItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /game/matches/{matchId}/scores
 */
export interface ScoresRequestBuilder extends BaseRequestBuilder<ScoresRequestBuilder> {
    /**
     * Gets an item from the teambattles.game.matches.item.scores.item collection
     * @param mapIndex Zero-based index of the map within the series.
     * @returns {WithMapIndexItemRequestBuilder}
     */
    byMapIndex(mapIndex: string): WithMapIndexItemRequestBuilder;
    /**
     * Returns every recorded map score plus the aggregate series tally. Requires the game.scores:write OR game.lifecycle:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameScoresResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameScoresResponse | undefined>;
    /**
     * Submits scores for one or more maps; game-developer scores are auto-confirmed. Requires the game.scores:write permission.
     * @param body Request body for submitting one or more map scores in a single call.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameBatchScoresResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(body: GameBatchScoresBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameBatchScoresResponse | undefined>;
    /**
     * Returns every recorded map score plus the aggregate series tally. Requires the game.scores:write OR game.lifecycle:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
    /**
     * Submits scores for one or more maps; game-developer scores are auto-confirmed. Requires the game.scores:write permission.
     * @param body Request body for submitting one or more map scores in a single call.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: GameBatchScoresBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ScoresRequestBuilderUriTemplate = "{+baseurl}/game/matches/{matchId}/scores";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const ScoresRequestBuilderNavigationMetadata: Record<Exclude<keyof ScoresRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ScoresRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map