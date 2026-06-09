import { type ConfigRequestBuilder } from './config/index.js';
import { type IssueRequestBuilder } from './issue/index.js';
import { type WithCooldownItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns
 */
export interface CooldownsRequestBuilder extends BaseRequestBuilder<CooldownsRequestBuilder> {
    /**
     * The config property
     */
    get config(): ConfigRequestBuilder;
    /**
     * The issue property
     */
    get issue(): IssueRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item.cooldowns.item collection
     * @param cooldownId League member cooldown ID.
     * @returns {WithCooldownItemRequestBuilder}
     */
    byCooldownId(cooldownId: string): WithCooldownItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const CooldownsRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/cooldowns";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const CooldownsRequestBuilderNavigationMetadata: Record<Exclude<keyof CooldownsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map