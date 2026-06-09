import { type UpdateRequestBuilder } from './update/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns/config
 */
export interface ConfigRequestBuilder extends BaseRequestBuilder<ConfigRequestBuilder> {
    /**
     * The update property
     */
    get update(): UpdateRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const ConfigRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/cooldowns/config";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const ConfigRequestBuilderNavigationMetadata: Record<Exclude<keyof ConfigRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map