import { type ApiMatchPlayersResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/{matchId}/players
 */
export interface PlayersRequestBuilder extends BaseRequestBuilder<PlayersRequestBuilder> {
    /**
     * Returns participant-gated player rows for a match, including roster type and attendance state. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApiMatchPlayersResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApiMatchPlayersResponse | undefined>;
    /**
     * Returns participant-gated player rows for a match, including roster type and attendance state. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const PlayersRequestBuilderUriTemplate = "{+baseurl}/matches/{matchId}/players";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const PlayersRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map