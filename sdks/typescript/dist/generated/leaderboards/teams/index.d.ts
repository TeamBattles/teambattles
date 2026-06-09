import { type LeaderboardSortBy, type TeamLeaderboardResponse } from '../../models/index.js';
import { type WithIdentifierItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leaderboards/teams
 */
export interface TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /**
     * Gets an item from the teambattles.leaderboards.teams.item collection
     * @param identifier Team slug or Convex team ID.
     * @returns {WithIdentifierItemRequestBuilder}
     */
    byIdentifier(identifier: string): WithIdentifierItemRequestBuilder;
    /**
     * Returns active, non-disabled, non-private teams ranked by the requested stat. Requires teams.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<TeamLeaderboardResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<TeamsRequestBuilderGetQueryParameters> | undefined): Promise<TeamLeaderboardResponse | undefined>;
    /**
     * Returns active, non-disabled, non-private teams ranked by the requested stat. Requires teams.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<TeamsRequestBuilderGetQueryParameters> | undefined): RequestInformation;
}
/**
 * Returns active, non-disabled, non-private teams ranked by the requested stat. Requires teams.profile:read.
 */
export interface TeamsRequestBuilderGetQueryParameters {
    gameSlug?: string;
    limit?: number;
    sortBy?: LeaderboardSortBy;
}
/**
 * Uri template for the request builder.
 */
export declare const TeamsRequestBuilderUriTemplate = "{+baseurl}/leaderboards/teams{?gameSlug*,limit*,sortBy*}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const TeamsRequestBuilderNavigationMetadata: Record<Exclude<keyof TeamsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const TeamsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map