import { type ApiStrategyEnvelope } from '../../models/index.js';
import { type ShapesRequestBuilder } from './shapes/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /strategies/{slug}
 */
export interface WithSlugItemRequestBuilder extends BaseRequestBuilder<WithSlugItemRequestBuilder> {
    /**
     * The shapes property
     */
    get shapes(): ShapesRequestBuilder;
    /**
     * Returns a shareable strategy resolved by its public share slug. Public and unlisted strategies are returned to any caller; a private strategy returns 404 unless the API key owner owns it. Requires strategies.read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApiStrategyEnvelope>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApiStrategyEnvelope | undefined>;
    /**
     * Returns a shareable strategy resolved by its public share slug. Public and unlisted strategies are returned to any caller; a private strategy returns 404 unless the API key owner owns it. Requires strategies.read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithSlugItemRequestBuilderUriTemplate = "{+baseurl}/strategies/{slug}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithSlugItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithSlugItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithSlugItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map