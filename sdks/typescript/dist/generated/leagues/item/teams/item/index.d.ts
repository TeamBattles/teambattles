import { type ApproveRequestBuilder } from './approve/index.js';
import { type DenyRequestBuilder } from './deny/index.js';
import { type RemoveRequestBuilder } from './remove/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams/{leagueTeamId}
 */
export interface WithLeagueTeamItemRequestBuilder extends BaseRequestBuilder<WithLeagueTeamItemRequestBuilder> {
    /**
     * The approve property
     */
    get approve(): ApproveRequestBuilder;
    /**
     * The deny property
     */
    get deny(): DenyRequestBuilder;
    /**
     * The remove property
     */
    get remove(): RemoveRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithLeagueTeamItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithLeagueTeamItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithLeagueTeamItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map