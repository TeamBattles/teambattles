import { type LeaderboardRankResponse, type LeaderboardSortBy } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leaderboards/teams/{identifier}/rank
 */
export interface RankRequestBuilder extends BaseRequestBuilder<RankRequestBuilder> {
    /**
     * Returns a team's rank for the requested leaderboard filters. Private teams return rank null unless they are otherwise excluded from the API leaderboard. Requires teams.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeaderboardRankResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<RankRequestBuilderGetQueryParameters> | undefined): Promise<LeaderboardRankResponse | undefined>;
    /**
     * Returns a team's rank for the requested leaderboard filters. Private teams return rank null unless they are otherwise excluded from the API leaderboard. Requires teams.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<RankRequestBuilderGetQueryParameters> | undefined): RequestInformation;
}
/**
 * Returns a team's rank for the requested leaderboard filters. Private teams return rank null unless they are otherwise excluded from the API leaderboard. Requires teams.profile:read.
 */
export interface RankRequestBuilderGetQueryParameters {
    gameSlug?: string;
    sortBy?: LeaderboardSortBy;
}
/**
 * Uri template for the request builder.
 */
export declare const RankRequestBuilderUriTemplate = "{+baseurl}/leaderboards/teams/{identifier}/rank{?gameSlug*,sortBy*}";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RankRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map