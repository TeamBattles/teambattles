import { type WithModeItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /user/game-ranks/{gameId}
 */
export interface WithGameItemRequestBuilder extends BaseRequestBuilder<WithGameItemRequestBuilder> {
    /**
     * Gets an item from the teambattles.user.gameRanks.item.item collection
     * @param mode Game mode / playlist of the rank to delete.
     * @returns {WithModeItemRequestBuilder}
     */
    byMode(mode: string): WithModeItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const WithGameItemRequestBuilderUriTemplate = "{+baseurl}/user/game-ranks/{gameId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithGameItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithGameItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map