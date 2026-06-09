import { type RemoveLeagueMemberResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/members/{memberId}/remove
 */
export interface RemoveRequestBuilder extends BaseRequestBuilder<RemoveRequestBuilder> {
    /**
     * Deactivates a league staff membership. Requires a league-operator key bound to the league and the league members capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<RemoveLeagueMemberResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<RemoveLeagueMemberResponse | undefined>;
    /**
     * Deactivates a league staff membership. Requires a league-operator key bound to the league and the league members capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const RemoveRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/members/{memberId}/remove";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RemoveRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map