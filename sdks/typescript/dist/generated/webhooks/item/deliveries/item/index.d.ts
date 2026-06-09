import { type ReplayRequestBuilder } from './replay/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /webhooks/{id}/deliveries/{deliveryId}
 */
export interface WithDeliveryItemRequestBuilder extends BaseRequestBuilder<WithDeliveryItemRequestBuilder> {
    /**
     * The replay property
     */
    get replay(): ReplayRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithDeliveryItemRequestBuilderUriTemplate = "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithDeliveryItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithDeliveryItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map