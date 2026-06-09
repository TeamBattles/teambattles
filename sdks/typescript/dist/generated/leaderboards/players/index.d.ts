import { type LeaderboardSortBy, type PlayerLeaderboardResponse } from '../../models/index.js';
import { type MeRequestBuilder } from './me/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leaderboards/players
 */
export interface PlayersRequestBuilder extends BaseRequestBuilder<PlayersRequestBuilder> {
    /**
     * The me property
     */
    get me(): MeRequestBuilder;
    /**
     * Returns the global player leaderboard. gameSlug is rejected because player stats are global. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<PlayerLeaderboardResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<PlayersRequestBuilderGetQueryParameters> | undefined): Promise<PlayerLeaderboardResponse | undefined>;
    /**
     * Returns the global player leaderboard. gameSlug is rejected because player stats are global. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<PlayersRequestBuilderGetQueryParameters> | undefined): RequestInformation;
}
/**
 * Returns the global player leaderboard. gameSlug is rejected because player stats are global. Requires users.profile:read.
 */
export interface PlayersRequestBuilderGetQueryParameters {
    limit?: number;
    sortBy?: LeaderboardSortBy;
}
/**
 * Uri template for the request builder.
 */
export declare const PlayersRequestBuilderUriTemplate = "{+baseurl}/leaderboards/players{?limit*,sortBy*}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const PlayersRequestBuilderNavigationMetadata: Record<Exclude<keyof PlayersRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const PlayersRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map