import { type LiveStatusRequestBuilder } from './liveStatus/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /streams
 */
export interface StreamsRequestBuilder extends BaseRequestBuilder<StreamsRequestBuilder> {
    /**
     * The liveStatus property
     */
    get liveStatus(): LiveStatusRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const StreamsRequestBuilderUriTemplate = "{+baseurl}/streams";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const StreamsRequestBuilderNavigationMetadata: Record<Exclude<keyof StreamsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map