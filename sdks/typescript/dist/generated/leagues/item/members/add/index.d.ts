import { type AddLeagueMemberRequestBody, type AddLeagueMemberResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/members/add
 */
export interface AddRequestBuilder extends BaseRequestBuilder<AddRequestBuilder> {
    /**
     * Adds or reactivates a league staff member. Requires a league-operator key bound to the league and the league members capability.
     * @param body Adds or reactivates a league staff member.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<AddLeagueMemberResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: AddLeagueMemberRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<AddLeagueMemberResponse | undefined>;
    /**
     * Adds or reactivates a league staff member. Requires a league-operator key bound to the league and the league members capability.
     * @param body Adds or reactivates a league staff member.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: AddLeagueMemberRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const AddRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/members/add";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const AddRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map