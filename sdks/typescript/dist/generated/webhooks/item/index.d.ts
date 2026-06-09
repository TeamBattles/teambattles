import { type UpdateWebhookBody, type WebhookEndpoint, type WebhookOk } from '../../models/index.js';
import { type DeliveriesRequestBuilder } from './deliveries/index.js';
import { type RotateSecretRequestBuilder } from './rotateSecret/index.js';
import { type TestRequestBuilder } from './test/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /webhooks/{id}
 */
export interface WebhooksItemRequestBuilder extends BaseRequestBuilder<WebhooksItemRequestBuilder> {
    /**
     * The deliveries property
     */
    get deliveries(): DeliveriesRequestBuilder;
    /**
     * The rotateSecret property
     */
    get rotateSecret(): RotateSecretRequestBuilder;
    /**
     * The test property
     */
    get test(): TestRequestBuilder;
    /**
     * Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<WebhookOk>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    delete(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<WebhookOk | undefined>;
    /**
     * Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<WebhookEndpoint>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<WebhookEndpoint | undefined>;
    /**
     * Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
     * @param body Partial update of a webhook endpoint.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<WebhookOk>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    patch(body: UpdateWebhookBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<WebhookOk | undefined>;
    /**
     * Deletes a webhook endpoint in the caller's scope, cascading its delivery logs and rate-limit bucket. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toDeleteRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
    /**
     * Returns one webhook endpoint in the caller's scope (no secret material). A scope/owner mismatch is reported as 404. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
    /**
     * Partially updates a webhook endpoint in the caller's scope. Re-enabling or changing the URL resets the failure count. Requires the webhooks.manage permission and the webhooks feature.
     * @param body Partial update of a webhook endpoint.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPatchRequestInformation(body: UpdateWebhookBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WebhooksItemRequestBuilderUriTemplate = "{+baseurl}/webhooks/{id}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WebhooksItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WebhooksItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WebhooksItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map