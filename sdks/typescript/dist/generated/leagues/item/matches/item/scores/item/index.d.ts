import { type GameSingleMapScoreBody, type GameSingleMapScoreResponse } from '../../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/{matchId}/scores/{mapIndex}
 */
export interface WithMapIndexItemRequestBuilder extends BaseRequestBuilder<WithMapIndexItemRequestBuilder> {
    /**
     * Submits the score for one map in a league match; league-operator scores are auto-confirmed. Requires the league scores capability.
     * @param body Request body for submitting a single map's score (mapIndex comes from the path).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameSingleMapScoreResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: GameSingleMapScoreBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameSingleMapScoreResponse | undefined>;
    /**
     * Submits the score for one map in a league match; league-operator scores are auto-confirmed. Requires the league scores capability.
     * @param body Request body for submitting a single map's score (mapIndex comes from the path).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: GameSingleMapScoreBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithMapIndexItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/matches/{matchId}/scores/{mapIndex}";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithMapIndexItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map