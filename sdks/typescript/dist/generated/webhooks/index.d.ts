import { type CreateWebhookBody, type WebhookListResponse, type WebhookSecret } from '../models/index.js';
import { type WebhooksItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /webhooks
 */
export interface WebhooksRequestBuilder extends BaseRequestBuilder<WebhooksRequestBuilder> {
    /**
     * Gets an item from the teambattles.webhooks.item collection
     * @param id Webhook endpoint id.
     * @returns {WebhooksItemRequestBuilder}
     */
    byId(id: string): WebhooksItemRequestBuilder;
    /**
     * Lists the API key's webhook endpoints within its derived scope. Secret material is never returned. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<WebhookListResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<WebhookListResponse | undefined>;
    /**
     * Creates a webhook endpoint in the API key's derived scope (personal -> user, developer-app -> game, league-operator -> league). Returns the signing secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
     * @param body Create a webhook endpoint in the caller's scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<WebhookSecret>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    post(body: CreateWebhookBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<WebhookSecret | undefined>;
    /**
     * Lists the API key's webhook endpoints within its derived scope. Secret material is never returned. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
    /**
     * Creates a webhook endpoint in the API key's derived scope (personal -> user, developer-app -> game, league-operator -> league). Returns the signing secret ONCE. Requires the webhooks.manage permission and the webhooks feature.
     * @param body Create a webhook endpoint in the caller's scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: CreateWebhookBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WebhooksRequestBuilderUriTemplate = "{+baseurl}/webhooks";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WebhooksRequestBuilderNavigationMetadata: Record<Exclude<keyof WebhooksRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WebhooksRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map