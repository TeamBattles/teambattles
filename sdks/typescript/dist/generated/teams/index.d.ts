import { type WithIdentifierItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /teams
 */
export interface TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /**
     * Gets an item from the teambattles.teams.item collection
     * @param identifier Team slug or Convex team ID.
     * @returns {WithIdentifierItemRequestBuilder}
     */
    byIdentifier(identifier: string): WithIdentifierItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const TeamsRequestBuilderUriTemplate = "{+baseurl}/teams";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const TeamsRequestBuilderNavigationMetadata: Record<Exclude<keyof TeamsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map