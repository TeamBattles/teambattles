import { type ReportRequestBuilder } from './report/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /chat/messages/{messageId}
 */
export interface WithMessageItemRequestBuilder extends BaseRequestBuilder<WithMessageItemRequestBuilder> {
    /**
     * The report property
     */
    get report(): ReportRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithMessageItemRequestBuilderUriTemplate = "{+baseurl}/chat/messages/{messageId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithMessageItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithMessageItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map