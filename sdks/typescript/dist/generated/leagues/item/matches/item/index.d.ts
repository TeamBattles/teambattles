import { type PlayerStatsRequestBuilder } from './playerStats/index.js';
import { type ScoresRequestBuilder } from './scores/index.js';
import { type StatusRequestBuilder } from './status/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/matches/{matchId}
 */
export interface WithMatchItemRequestBuilder extends BaseRequestBuilder<WithMatchItemRequestBuilder> {
    /**
     * The playerStats property
     */
    get playerStats(): PlayerStatsRequestBuilder;
    /**
     * The scores property
     */
    get scores(): ScoresRequestBuilder;
    /**
     * The status property
     */
    get status(): StatusRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithMatchItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/matches/{matchId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithMatchItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithMatchItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map