import { type CreateRequestBuilder } from './create/index.js';
import { type DiscoverRequestBuilder } from './discover/index.js';
import { type WithMatchItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches
 */
export interface MatchesRequestBuilder extends BaseRequestBuilder<MatchesRequestBuilder> {
    /**
     * The create property
     */
    get create(): CreateRequestBuilder;
    /**
     * The discover property
     */
    get discover(): DiscoverRequestBuilder;
    /**
     * Gets an item from the teambattles.matches.item collection
     * @param matchId Match ID.
     * @returns {WithMatchItemRequestBuilder}
     */
    byMatchId(matchId: string): WithMatchItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const MatchesRequestBuilderUriTemplate = "{+baseurl}/matches";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const MatchesRequestBuilderNavigationMetadata: Record<Exclude<keyof MatchesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map