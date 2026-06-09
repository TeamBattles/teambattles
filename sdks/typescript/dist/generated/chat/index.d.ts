import { type MessagesRequestBuilder } from './messages/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /chat
 */
export interface ChatRequestBuilder extends BaseRequestBuilder<ChatRequestBuilder> {
    /**
     * The messages property
     */
    get messages(): MessagesRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const ChatRequestBuilderUriTemplate = "{+baseurl}/chat";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const ChatRequestBuilderNavigationMetadata: Record<Exclude<keyof ChatRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map