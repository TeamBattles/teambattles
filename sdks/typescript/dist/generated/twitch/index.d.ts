import { type BadgesRequestBuilder } from './badges/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /twitch
 */
export interface TwitchRequestBuilder extends BaseRequestBuilder<TwitchRequestBuilder> {
    /**
     * The badges property
     */
    get badges(): BadgesRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const TwitchRequestBuilderUriTemplate = "{+baseurl}/twitch";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const TwitchRequestBuilderNavigationMetadata: Record<Exclude<keyof TwitchRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map