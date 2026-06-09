import { type OrganizationsRequestBuilder } from './organizations/index.js';
import { type PlayersRequestBuilder } from './players/index.js';
import { type TeamsRequestBuilder } from './teams/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leaderboards
 */
export interface LeaderboardsRequestBuilder extends BaseRequestBuilder<LeaderboardsRequestBuilder> {
    /**
     * The organizations property
     */
    get organizations(): OrganizationsRequestBuilder;
    /**
     * The players property
     */
    get players(): PlayersRequestBuilder;
    /**
     * The teams property
     */
    get teams(): TeamsRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const LeaderboardsRequestBuilderUriTemplate = "{+baseurl}/leaderboards";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const LeaderboardsRequestBuilderNavigationMetadata: Record<Exclude<keyof LeaderboardsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map