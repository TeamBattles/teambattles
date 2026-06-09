import { type GameRankDeleteResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /user/game-ranks/{gameId}/{mode}
 */
export interface WithModeItemRequestBuilder extends BaseRequestBuilder<WithModeItemRequestBuilder> {
    /**
     * Deletes the API key owner's rank for a single (gameId, mode) slot. No-op when no such rank exists. The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameRankDeleteResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    delete(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameRankDeleteResponse | undefined>;
    /**
     * Deletes the API key owner's rank for a single (gameId, mode) slot. No-op when no such rank exists. The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toDeleteRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithModeItemRequestBuilderUriTemplate = "{+baseurl}/user/game-ranks/{gameId}/{mode}";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithModeItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map