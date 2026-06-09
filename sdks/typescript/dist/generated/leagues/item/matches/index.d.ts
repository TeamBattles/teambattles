import { type BatchScoresRequestBuilder } from './batchScores/index.js';
import { type WithMatchItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches
 */
export interface MatchesRequestBuilder extends BaseRequestBuilder<MatchesRequestBuilder> {
    /**
     * The batchScores property
     */
    get batchScores(): BatchScoresRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item.matches.item collection
     * @param matchId Match ID.
     * @returns {WithMatchItemRequestBuilder}
     */
    byMatchId(matchId: string): WithMatchItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const MatchesRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/matches";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const MatchesRequestBuilderNavigationMetadata: Record<Exclude<keyof MatchesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map