import { type WithIdentifierItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /users
 */
export interface UsersRequestBuilder extends BaseRequestBuilder<UsersRequestBuilder> {
    /**
     * Gets an item from the teambattles.users.item collection
     * @param identifier Username or Convex user ID.
     * @returns {WithIdentifierItemRequestBuilder}
     */
    byIdentifier(identifier: string): WithIdentifierItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const UsersRequestBuilderUriTemplate = "{+baseurl}/users";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const UsersRequestBuilderNavigationMetadata: Record<Exclude<keyof UsersRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map