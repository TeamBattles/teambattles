import { type ApiStreamStatusEnvelope } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /users/{identifier}/stream
 */
export interface StreamRequestBuilder extends BaseRequestBuilder<StreamRequestBuilder> {
    /**
     * Returns whether a user is live, on which platforms, and their primary stream details for public or limited profiles, plus self. Private non-self profiles return 403. Requires stream.read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApiStreamStatusEnvelope>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApiStreamStatusEnvelope | undefined>;
    /**
     * Returns whether a user is live, on which platforms, and their primary stream details for public or limited profiles, plus self. Private non-self profiles return 403. Requires stream.read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const StreamRequestBuilderUriTemplate = "{+baseurl}/users/{identifier}/stream";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const StreamRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map