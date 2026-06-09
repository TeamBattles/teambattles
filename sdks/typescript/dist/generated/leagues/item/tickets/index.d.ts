import { type CreateRequestBuilder } from './create/index.js';
import { type WithTicketItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets
 */
export interface TicketsRequestBuilder extends BaseRequestBuilder<TicketsRequestBuilder> {
    /**
     * The create property
     */
    get create(): CreateRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item.tickets.item collection
     * @param ticketId League ticket ID.
     * @returns {WithTicketItemRequestBuilder}
     */
    byTicketId(ticketId: string): WithTicketItemRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const TicketsRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/tickets";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const TicketsRequestBuilderNavigationMetadata: Record<Exclude<keyof TicketsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map