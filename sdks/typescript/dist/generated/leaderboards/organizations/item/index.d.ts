import { type RankRequestBuilder } from './rank/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leaderboards/organizations/{identifier}
 */
export interface WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    /**
     * The rank property
     */
    get rank(): RankRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithIdentifierItemRequestBuilderUriTemplate = "{+baseurl}/leaderboards/organizations/{identifier}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithIdentifierItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithIdentifierItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map