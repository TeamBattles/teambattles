import { type MatchesRequestBuilder } from './matches/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /game
 */
export interface GameRequestBuilder extends BaseRequestBuilder<GameRequestBuilder> {
    /**
     * The matches property
     */
    get matches(): MatchesRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const GameRequestBuilderUriTemplate = "{+baseurl}/game";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const GameRequestBuilderNavigationMetadata: Record<Exclude<keyof GameRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map