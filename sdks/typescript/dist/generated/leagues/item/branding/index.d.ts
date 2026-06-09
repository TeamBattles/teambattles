import { type UpdateRequestBuilder } from './update/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/branding
 */
export interface BrandingRequestBuilder extends BaseRequestBuilder<BrandingRequestBuilder> {
    /**
     * The update property
     */
    get update(): UpdateRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const BrandingRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/branding";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const BrandingRequestBuilderNavigationMetadata: Record<Exclude<keyof BrandingRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map