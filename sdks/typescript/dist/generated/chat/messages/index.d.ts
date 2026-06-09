import { type WithMessageItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /chat/messages
 */
export interface MessagesRequestBuilder extends BaseRequestBuilder<MessagesRequestBuilder> {
    /**
     * Gets an item from the teambattles.chat.messages.item collection
     * @param messageId ID of the chat message to report.
     * @returns {WithMessageItemRequestBuilder}
     */
    byMessageId(messageId: string): WithMessageItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const MessagesRequestBuilderUriTemplate = "{+baseurl}/chat/messages";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const MessagesRequestBuilderNavigationMetadata: Record<Exclude<keyof MessagesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map