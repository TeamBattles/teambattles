import { type ApiStrategyShapesEnvelope } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /strategies/{slug}/shapes
 */
export interface ShapesRequestBuilder extends BaseRequestBuilder<ShapesRequestBuilder> {
    /**
     * Returns the canvas shapes of a shareable strategy resolved by its public share slug, ordered by stacking index. Hidden working shapes are omitted. The same visibility gate as the strategy read applies (private returns 404 unless the API key owner owns it). Requires strategies.read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApiStrategyShapesEnvelope>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApiStrategyShapesEnvelope | undefined>;
    /**
     * Returns the canvas shapes of a shareable strategy resolved by its public share slug, ordered by stacking index. Hidden working shapes are omitted. The same visibility gate as the strategy read applies (private returns 404 unless the API key owner owns it). Requires strategies.read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ShapesRequestBuilderUriTemplate = "{+baseurl}/strategies/{slug}/shapes";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ShapesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map