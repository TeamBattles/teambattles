import { type TicketDetail } from '../../models/index.js';
import { type MessagesRequestBuilder } from './messages/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /tickets/{ticketId}
 */
export interface WithTicketItemRequestBuilder extends BaseRequestBuilder<WithTicketItemRequestBuilder> {
    /**
     * The messages property
     */
    get messages(): MessagesRequestBuilder;
    /**
     * Returns one of the API key owner's tickets and its message thread (internal staff notes excluded). A ticket the owner does not own reads as 404. Requires the tickets.read scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<TicketDetail>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<TicketDetail | undefined>;
    /**
     * Returns one of the API key owner's tickets and its message thread (internal staff notes excluded). A ticket the owner does not own reads as 404. Requires the tickets.read scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithTicketItemRequestBuilderUriTemplate = "{+baseurl}/tickets/{ticketId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithTicketItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithTicketItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithTicketItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map