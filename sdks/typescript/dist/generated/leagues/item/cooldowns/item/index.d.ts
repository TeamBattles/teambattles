import { type ClearRequestBuilder } from './clear/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns/{cooldownId}
 */
export interface WithCooldownItemRequestBuilder extends BaseRequestBuilder<WithCooldownItemRequestBuilder> {
    /**
     * The clear property
     */
    get clear(): ClearRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithCooldownItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithCooldownItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithCooldownItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map