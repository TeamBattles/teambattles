import { type GameCreateMatchBody, type GameCreateMatchResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /game/matches/create
 */
export interface CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /**
     * Creates an ACCEPTED + PUBLISHED match for the API key's bound game between two active teams in that game. Requires the game.lifecycle:read-write permission. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key + body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param body Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameCreateMatchResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    post(body: GameCreateMatchBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameCreateMatchResponse | undefined>;
    /**
     * Creates an ACCEPTED + PUBLISHED match for the API key's bound game between two active teams in that game. Requires the game.lifecycle:read-write permission. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key + body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param body Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: GameCreateMatchBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const CreateRequestBuilderUriTemplate = "{+baseurl}/game/matches/create";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const CreateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map