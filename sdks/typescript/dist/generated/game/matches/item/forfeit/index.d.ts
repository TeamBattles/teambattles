import { type GameForfeitBody, type GameForfeitResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /game/matches/{matchId}/forfeit
 */
export interface ForfeitRequestBuilder extends BaseRequestBuilder<ForfeitRequestBuilder> {
    /**
     * Forfeits the match for the supplied team; the other participating team wins. Valid only while the match is ACCEPTED, READY, or IN_PROGRESS. Requires the game.lifecycle:read-write permission and a key bound to the match's game. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param body Request body for forfeiting a match on behalf of one participating team.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameForfeitResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    post(body: GameForfeitBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameForfeitResponse | undefined>;
    /**
     * Forfeits the match for the supplied team; the other participating team wins. Valid only while the match is ACCEPTED, READY, or IN_PROGRESS. Requires the game.lifecycle:read-write permission and a key bound to the match's game. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
     * @param body Request body for forfeiting a match on behalf of one participating team.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: GameForfeitBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ForfeitRequestBuilderUriTemplate = "{+baseurl}/game/matches/{matchId}/forfeit";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ForfeitRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map