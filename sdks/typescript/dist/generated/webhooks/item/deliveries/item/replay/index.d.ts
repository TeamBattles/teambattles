import { type WebhookReplayResult } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /webhooks/{id}/deliveries/{deliveryId}/replay
 */
export interface ReplayRequestBuilder extends BaseRequestBuilder<ReplayRequestBuilder> {
    /**
     * Re-queues a dead-lettered delivery for a fresh attempt. Delivered, in-flight, or still-retrying (failed) deliveries cannot be replayed (409). Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<WebhookReplayResult>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<WebhookReplayResult | undefined>;
    /**
     * Re-queues a dead-lettered delivery for a fresh attempt. Delivered, in-flight, or still-retrying (failed) deliveries cannot be replayed (409). Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ReplayRequestBuilderUriTemplate = "{+baseurl}/webhooks/{id}/deliveries/{deliveryId}/replay";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ReplayRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map