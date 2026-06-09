import { type RevokeBanRequestBody, type RevokeBanResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/bans/{banId}/revoke
 */
export interface RevokeRequestBuilder extends BaseRequestBuilder<RevokeRequestBuilder> {
    /**
     * Revokes an active league team ban. Requires a league-operator key bound to the league and the league bans capability.
     * @param body Optional reason for revoking a league ban.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<RevokeBanResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: RevokeBanRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<RevokeBanResponse | undefined>;
    /**
     * Revokes an active league team ban. Requires a league-operator key bound to the league and the league bans capability.
     * @param body Optional reason for revoking a league ban.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: RevokeBanRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const RevokeRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/bans/{banId}/revoke";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RevokeRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map