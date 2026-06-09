import { type CreateLeagueTicketRequestBody, type CreateLeagueTicketResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/tickets/create
 */
export interface CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /**
     * Creates a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Creates a league-scoped support ticket.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<CreateLeagueTicketResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: CreateLeagueTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<CreateLeagueTicketResponse | undefined>;
    /**
     * Creates a league-scoped support ticket. Requires a league-operator key bound to the league and the league tickets capability.
     * @param body Creates a league-scoped support ticket.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: CreateLeagueTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const CreateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/tickets/create";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const CreateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map