import { type TransferLeagueOwnershipRequestBody, type TransferLeagueOwnershipResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/ownership/transfer
 */
export interface TransferRequestBuilder extends BaseRequestBuilder<TransferRequestBuilder> {
    /**
     * Transfers league ownership to another staff member. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
     * @param body Transfers league ownership to an existing staff member.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<TransferLeagueOwnershipResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: TransferLeagueOwnershipRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<TransferLeagueOwnershipResponse | undefined>;
    /**
     * Transfers league ownership to another staff member. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
     * @param body Transfers league ownership to an existing staff member.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: TransferLeagueOwnershipRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const TransferRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/ownership/transfer";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const TransferRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map