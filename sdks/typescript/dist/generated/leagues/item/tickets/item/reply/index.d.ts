import { type ReplyLeagueTicketRequestBody, type ReplyLeagueTicketResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets/{ticketId}/reply
 */
export interface ReplyRequestBuilder extends BaseRequestBuilder<ReplyRequestBuilder> {
    /**
     * Adds a reply or internal note to a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Adds a reply or internal note to a league support ticket.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ReplyLeagueTicketResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: ReplyLeagueTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ReplyLeagueTicketResponse | undefined>;
    /**
     * Adds a reply or internal note to a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Adds a reply or internal note to a league support ticket.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: ReplyLeagueTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ReplyRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/tickets/{ticketId}/reply";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ReplyRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map