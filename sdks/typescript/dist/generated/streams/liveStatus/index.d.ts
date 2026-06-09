import { type ApiBatchStreamStatusBody, type ApiBatchStreamStatusEnvelope } from '../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /streams/live-status
 */
export interface LiveStatusRequestBuilder extends BaseRequestBuilder<LiveStatusRequestBuilder> {
    /**
     * Returns compact live status for up to 50 users. Users that do not exist or whose profile hides stream status from the caller are omitted from the response. Requires stream.read.
     * @param body Batch live-status request body.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApiBatchStreamStatusEnvelope>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: ApiBatchStreamStatusBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApiBatchStreamStatusEnvelope | undefined>;
    /**
     * Returns compact live status for up to 50 users. Users that do not exist or whose profile hides stream status from the caller are omitted from the response. Requires stream.read.
     * @param body Batch live-status request body.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: ApiBatchStreamStatusBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const LiveStatusRequestBuilderUriTemplate = "{+baseurl}/streams/live-status";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const LiveStatusRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map