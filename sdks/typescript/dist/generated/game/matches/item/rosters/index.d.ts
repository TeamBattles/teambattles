import { type GameMatchRostersResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /game/matches/{matchId}/rosters
 */
export interface RostersRequestBuilder extends BaseRequestBuilder<RostersRequestBuilder> {
    /**
     * Returns the creator and accepted team rosters for a match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameMatchRostersResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameMatchRostersResponse | undefined>;
    /**
     * Returns the creator and accepted team rosters for a match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const RostersRequestBuilderUriTemplate = "{+baseurl}/game/matches/{matchId}/rosters";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RostersRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map