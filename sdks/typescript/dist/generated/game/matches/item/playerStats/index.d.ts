import { type GamePlayerStatsBody, type GamePlayerStatsResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /game/matches/{matchId}/player-stats
 */
export interface PlayerStatsRequestBuilder extends BaseRequestBuilder<PlayerStatsRequestBuilder> {
    /**
     * Sets per-player stats on an existing map score for the given mapIndex. Requires the game.scores:write permission.
     * @param body Request body for submitting or updating player stats for an existing map score.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GamePlayerStatsResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(body: GamePlayerStatsBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GamePlayerStatsResponse | undefined>;
    /**
     * Sets per-player stats on an existing map score for the given mapIndex. Requires the game.scores:write permission.
     * @param body Request body for submitting or updating player stats for an existing map score.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: GamePlayerStatsBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const PlayerStatsRequestBuilderUriTemplate = "{+baseurl}/game/matches/{matchId}/player-stats";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const PlayerStatsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map