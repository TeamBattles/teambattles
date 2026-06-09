import { type UpdateLeagueBrandingRequestBody, type UpdateLeagueBrandingResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/branding/update
 */
export interface UpdateRequestBuilder extends BaseRequestBuilder<UpdateRequestBuilder> {
    /**
     * Updates league public profile branding and metadata. Requires a league-operator key bound to the league and the league branding capability.
     * @param body Updates league profile branding and public metadata.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<UpdateLeagueBrandingResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: UpdateLeagueBrandingRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<UpdateLeagueBrandingResponse | undefined>;
    /**
     * Updates league public profile branding and metadata. Requires a league-operator key bound to the league and the league branding capability.
     * @param body Updates league profile branding and public metadata.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: UpdateLeagueBrandingRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const UpdateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/branding/update";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const UpdateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map