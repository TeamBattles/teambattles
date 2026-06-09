import { type LeagueSeasonOptions, type LeagueSeasonOptionsRequestBody } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/season-options
 */
export interface SeasonOptionsRequestBuilder extends BaseRequestBuilder<SeasonOptionsRequestBuilder> {
    /**
     * Returns season selector options for a league game. Requires leagues.league_public:read.
     * @param body Season option selector.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueSeasonOptions>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: LeagueSeasonOptionsRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueSeasonOptions | undefined>;
    /**
     * Returns season selector options for a league game. Requires leagues.league_public:read.
     * @param body Season option selector.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: LeagueSeasonOptionsRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const SeasonOptionsRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/season-options";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const SeasonOptionsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map