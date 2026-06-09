import { type RevokeRequestBuilder } from './revoke/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/bans/{banId}
 */
export interface WithBanItemRequestBuilder extends BaseRequestBuilder<WithBanItemRequestBuilder> {
    /**
     * The revoke property
     */
    get revoke(): RevokeRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithBanItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/bans/{banId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithBanItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithBanItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map