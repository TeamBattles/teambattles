import { type LeaderboardSortBy, type OrganizationLeaderboardResponse } from '../../models/index.js';
import { type WithIdentifierItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leaderboards/organizations
 */
export interface OrganizationsRequestBuilder extends BaseRequestBuilder<OrganizationsRequestBuilder> {
    /**
     * Gets an item from the teambattles.leaderboards.organizations.item collection
     * @param identifier Organization slug or Convex organization ID.
     * @returns {WithIdentifierItemRequestBuilder}
     */
    byIdentifier(identifier: string): WithIdentifierItemRequestBuilder;
    /**
     * Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<OrganizationLeaderboardResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<OrganizationsRequestBuilderGetQueryParameters> | undefined): Promise<OrganizationLeaderboardResponse | undefined>;
    /**
     * Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<OrganizationsRequestBuilderGetQueryParameters> | undefined): RequestInformation;
}
/**
 * Returns active, public, non-disabled organizations ranked from active, enabled, non-private team stats. Requires orgs.profile:read.
 */
export interface OrganizationsRequestBuilderGetQueryParameters {
    gameSlug?: string;
    limit?: number;
    sortBy?: LeaderboardSortBy;
}
/**
 * Uri template for the request builder.
 */
export declare const OrganizationsRequestBuilderUriTemplate = "{+baseurl}/leaderboards/organizations{?gameSlug*,limit*,sortBy*}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const OrganizationsRequestBuilderNavigationMetadata: Record<Exclude<keyof OrganizationsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const OrganizationsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map