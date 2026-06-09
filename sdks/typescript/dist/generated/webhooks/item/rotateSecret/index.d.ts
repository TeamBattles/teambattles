import { type WebhookSecret } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /webhooks/{id}/rotate-secret
 */
export interface RotateSecretRequestBuilder extends BaseRequestBuilder<RotateSecretRequestBuilder> {
    /**
     * Rotates the endpoint's signing secret. The previous secret keeps signing for a 24h grace window so consumers can update without missing deliveries. Returns the new secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<WebhookSecret>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<WebhookSecret | undefined>;
    /**
     * Rotates the endpoint's signing secret. The previous secret keeps signing for a 24h grace window so consumers can update without missing deliveries. Returns the new secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const RotateSecretRequestBuilderUriTemplate = "{+baseurl}/webhooks/{id}/rotate-secret";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RotateSecretRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map