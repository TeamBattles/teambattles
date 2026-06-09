import { type UpdateLeagueTicketRequestBody, type UpdateLeagueTicketResponse } from '../../../../models/index.js';
import { type EscalateRequestBuilder } from './escalate/index.js';
import { type ReplyRequestBuilder } from './reply/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets/{ticketId}
 */
export interface WithTicketItemRequestBuilder extends BaseRequestBuilder<WithTicketItemRequestBuilder> {
    /**
     * The escalate property
     */
    get escalate(): EscalateRequestBuilder;
    /**
     * The reply property
     */
    get reply(): ReplyRequestBuilder;
    /**
     * Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Updates league ticket status, priority, or assignment.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<UpdateLeagueTicketResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    patch(body: UpdateLeagueTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<UpdateLeagueTicketResponse | undefined>;
    /**
     * Updates ticket status, priority, or assignment for a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Updates league ticket status, priority, or assignment.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPatchRequestInformation(body: UpdateLeagueTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithTicketItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/tickets/{ticketId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithTicketItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithTicketItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithTicketItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map