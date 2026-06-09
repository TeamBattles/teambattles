import { type ImageUploadUrlResponse } from '../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /uploads/image-url
 */
export interface ImageUrlRequestBuilder extends BaseRequestBuilder<ImageUrlRequestBuilder> {
    /**
     * Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ImageUploadUrlResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ImageUploadUrlResponse | undefined>;
    /**
     * Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ImageUrlRequestBuilderUriTemplate = "{+baseurl}/uploads/image-url";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ImageUrlRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map