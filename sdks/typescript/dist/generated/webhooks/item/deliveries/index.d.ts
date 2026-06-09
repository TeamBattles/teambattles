import { type WebhookDelivery } from '../../../models/index.js';
import { type WithDeliveryItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {DeliveriesGetResponse}
 */
export declare function createDeliveriesGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
export interface DeliveriesGetResponse extends Parsable {
    /**
     * The continueCursor property
     */
    continueCursor?: string | null;
    /**
     * The isDone property
     */
    isDone?: boolean | null;
    /**
     * The page property
     */
    page?: WebhookDelivery[] | null;
}
/**
 * Builds and executes requests for operations under /webhooks/{id}/deliveries
 */
export interface DeliveriesRequestBuilder extends BaseRequestBuilder<DeliveriesRequestBuilder> {
    /**
     * Gets an item from the teambattles.webhooks.item.deliveries.item collection
     * @param deliveryId Delivery-log row id to replay.
     * @returns {WithDeliveryItemRequestBuilder}
     */
    byDeliveryId(deliveryId: string): WithDeliveryItemRequestBuilder;
    /**
     * Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<DeliveriesGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     */
    get(requestConfiguration?: RequestConfiguration<DeliveriesRequestBuilderGetQueryParameters> | undefined): Promise<DeliveriesGetResponse | undefined>;
    /**
     * Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<DeliveriesRequestBuilderGetQueryParameters> | undefined): RequestInformation;
}
/**
 * Returns the endpoint's delivery log, newest first, with native cursor pagination. Pass limit (1-100) and cursor query params. Requires the webhooks.manage permission and the webhooks feature.
 */
export interface DeliveriesRequestBuilderGetQueryParameters {
    /**
     * Opaque continuation cursor from a prior page's continueCursor.
     */
    cursor?: string;
    /**
     * Page size 1-100 (default 25), enforced by the handler.
     */
    limit?: string;
}
/**
 * The deserialization information for the current model
 * @param DeliveriesGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoDeliveriesGetResponse(deliveriesGetResponse?: Partial<DeliveriesGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Serializes information the current object
 * @param DeliveriesGetResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeDeliveriesGetResponse(writer: SerializationWriter, deliveriesGetResponse?: Partial<DeliveriesGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const DeliveriesRequestBuilderUriTemplate = "{+baseurl}/webhooks/{id}/deliveries{?cursor*,limit*}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const DeliveriesRequestBuilderNavigationMetadata: Record<Exclude<keyof DeliveriesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const DeliveriesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map