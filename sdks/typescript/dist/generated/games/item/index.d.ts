import { type PlaylistsRequestBuilder } from './playlists/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /games/{id}
 */
export interface GamesItemRequestBuilder extends BaseRequestBuilder<GamesItemRequestBuilder> {
    /**
     * The playlists property
     */
    get playlists(): PlaylistsRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const GamesItemRequestBuilderUriTemplate = "{+baseurl}/games/{id}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const GamesItemRequestBuilderNavigationMetadata: Record<Exclude<keyof GamesItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map