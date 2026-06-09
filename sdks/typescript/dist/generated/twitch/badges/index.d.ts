import { type ChannelRequestBuilder } from './channel/index.js';
import { type GlobalRequestBuilder } from './global/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /twitch/badges
 */
export interface BadgesRequestBuilder extends BaseRequestBuilder<BadgesRequestBuilder> {
    /**
     * The channel property
     */
    get channel(): ChannelRequestBuilder;
    /**
     * The global property
     */
    get global(): GlobalRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const BadgesRequestBuilderUriTemplate = "{+baseurl}/twitch/badges";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const BadgesRequestBuilderNavigationMetadata: Record<Exclude<keyof BadgesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map