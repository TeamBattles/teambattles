import { type RemoveRequestBuilder } from './remove/index.js';
import { type RoleRequestBuilder } from './role/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/members/{memberId}
 */
export interface WithMemberItemRequestBuilder extends BaseRequestBuilder<WithMemberItemRequestBuilder> {
    /**
     * The remove property
     */
    get remove(): RemoveRequestBuilder;
    /**
     * The role property
     */
    get role(): RoleRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithMemberItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/members/{memberId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithMemberItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithMemberItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map