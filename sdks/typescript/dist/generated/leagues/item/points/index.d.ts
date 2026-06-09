import { type UpdateRequestBuilder } from './update/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/points
 */
export interface PointsRequestBuilder extends BaseRequestBuilder<PointsRequestBuilder> {
    /**
     * The update property
     */
    get update(): UpdateRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const PointsRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/points";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const PointsRequestBuilderNavigationMetadata: Record<Exclude<keyof PointsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map