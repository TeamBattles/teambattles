import { type TransferRequestBuilder } from './transfer/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/ownership
 */
export interface OwnershipRequestBuilder extends BaseRequestBuilder<OwnershipRequestBuilder> {
    /**
     * The transfer property
     */
    get transfer(): TransferRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const OwnershipRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/ownership";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const OwnershipRequestBuilderNavigationMetadata: Record<Exclude<keyof OwnershipRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map