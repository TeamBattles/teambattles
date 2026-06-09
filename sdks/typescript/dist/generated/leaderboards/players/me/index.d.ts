import { type RankRequestBuilder } from './rank/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leaderboards/players/me
 */
export interface MeRequestBuilder extends BaseRequestBuilder<MeRequestBuilder> {
    /**
     * The rank property
     */
    get rank(): RankRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const MeRequestBuilderUriTemplate = "{+baseurl}/leaderboards/players/me";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const MeRequestBuilderNavigationMetadata: Record<Exclude<keyof MeRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map