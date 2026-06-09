import { type WithLeagueTeamItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/teams
 */
export interface TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /**
     * Gets an item from the teambattles.leagues.item.teams.item collection
     * @param leagueTeamId League team application ID.
     * @returns {WithLeagueTeamItemRequestBuilder}
     */
    byLeagueTeamId(leagueTeamId: string): WithLeagueTeamItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const TeamsRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/teams";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const TeamsRequestBuilderNavigationMetadata: Record<Exclude<keyof TeamsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map