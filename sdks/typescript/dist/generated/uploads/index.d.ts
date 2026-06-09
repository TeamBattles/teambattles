import { type ImageUrlRequestBuilder } from './imageUrl/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /uploads
 */
export interface UploadsRequestBuilder extends BaseRequestBuilder<UploadsRequestBuilder> {
    /**
     * The imageUrl property
     */
    get imageUrl(): ImageUrlRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const UploadsRequestBuilderUriTemplate = "{+baseurl}/uploads";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const UploadsRequestBuilderNavigationMetadata: Record<Exclude<keyof UploadsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map