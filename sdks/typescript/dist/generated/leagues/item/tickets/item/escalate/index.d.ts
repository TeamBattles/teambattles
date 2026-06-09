import { type EscalateLeagueTicketRequestBody, type EscalateLeagueTicketResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets/{ticketId}/escalate
 */
export interface EscalateRequestBuilder extends BaseRequestBuilder<EscalateRequestBuilder> {
    /**
     * Escalates a league-scoped support ticket to TeamBattles staff. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Escalates a league support ticket to TeamBattles staff.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<EscalateLeagueTicketResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: EscalateLeagueTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<EscalateLeagueTicketResponse | undefined>;
    /**
     * Escalates a league-scoped support ticket to TeamBattles staff. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Escalates a league support ticket to TeamBattles staff.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: EscalateLeagueTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const EscalateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/tickets/{ticketId}/escalate";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const EscalateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map