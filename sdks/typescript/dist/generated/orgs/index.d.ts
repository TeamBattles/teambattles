import { type DiscoverRequestBuilder } from './discover/index.js';
import { type WithIdentifierItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /orgs
 */
export interface OrgsRequestBuilder extends BaseRequestBuilder<OrgsRequestBuilder> {
    /**
     * The discover property
     */
    get discover(): DiscoverRequestBuilder;
    /**
     * Gets an item from the teambattles.orgs.item collection
     * @param identifier Organization slug or Convex organization ID.
     * @returns {WithIdentifierItemRequestBuilder}
     */
    byIdentifier(identifier: string): WithIdentifierItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const OrgsRequestBuilderUriTemplate = "{+baseurl}/orgs";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const OrgsRequestBuilderNavigationMetadata: Record<Exclude<keyof OrgsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map