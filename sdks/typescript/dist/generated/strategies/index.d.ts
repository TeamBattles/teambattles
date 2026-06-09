import { type WithSlugItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /strategies
 */
export interface StrategiesRequestBuilder extends BaseRequestBuilder<StrategiesRequestBuilder> {
    /**
     * Gets an item from the teambattles.strategies.item collection
     * @param slug Strategy public share slug.
     * @returns {WithSlugItemRequestBuilder}
     */
    bySlug(slug: string): WithSlugItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const StrategiesRequestBuilderUriTemplate = "{+baseurl}/strategies";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const StrategiesRequestBuilderNavigationMetadata: Record<Exclude<keyof StrategiesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map