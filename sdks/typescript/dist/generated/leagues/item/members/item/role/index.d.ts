import { type UpdateLeagueMemberRoleRequestBody, type UpdateLeagueMemberRoleResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/members/{memberId}/role
 */
export interface RoleRequestBuilder extends BaseRequestBuilder<RoleRequestBuilder> {
    /**
     * Updates a league staff member role. Requires a league-operator key bound to the league and the league members capability.
     * @param body Updates a league staff member role.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<UpdateLeagueMemberRoleResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: UpdateLeagueMemberRoleRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<UpdateLeagueMemberRoleResponse | undefined>;
    /**
     * Updates a league staff member role. Requires a league-operator key bound to the league and the league members capability.
     * @param body Updates a league staff member role.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: UpdateLeagueMemberRoleRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const RoleRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/members/{memberId}/role";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RoleRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map