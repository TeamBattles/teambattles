import { type CreateTicketRequestBody, type CreateTicketResponse, type TicketSummary } from '../models/index.js';
import { type WithTicketItemRequestBuilder } from './item/index.js';
import { type AdditionalDataHolder, type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {string | TicketsGetResponse_nextCursorMember1}
 */
export declare function createTicketsGetResponse_nextCursorFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketsGetResponse_nextCursorMember1}
 */
export declare function createTicketsGetResponse_nextCursorMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TicketsGetResponse}
 */
export declare function createTicketsGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param TicketsGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketsGetResponse(ticketsGetResponse?: Partial<TicketsGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketsGetResponse_nextCursor The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketsGetResponse_nextCursor(ticketsGetResponse_nextCursor?: Partial<Parsable | string | TicketsGetResponse_nextCursorMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param TicketsGetResponse_nextCursorMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTicketsGetResponse_nextCursorMember1(ticketsGetResponse_nextCursorMember1?: Partial<TicketsGetResponse_nextCursorMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketsGetResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketsGetResponse(writer: SerializationWriter, ticketsGetResponse?: Partial<TicketsGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketsGetResponse_nextCursor The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketsGetResponse_nextCursor(writer: SerializationWriter, ticketsGetResponse_nextCursor?: Partial<Parsable | TicketsGetResponse_nextCursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TicketsGetResponse_nextCursorMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTicketsGetResponse_nextCursorMember1(writer: SerializationWriter, ticketsGetResponse_nextCursorMember1?: Partial<TicketsGetResponse_nextCursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
export interface TicketsGetResponse extends Parsable {
    /**
     * The data property
     */
    data?: TicketSummary[] | null;
    /**
     * The hasMore property
     */
    hasMore?: boolean | null;
    /**
     * The nextCursor property
     */
    nextCursor?: string | TicketsGetResponse_nextCursorMember1 | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export type TicketsGetResponse_nextCursor = string | TicketsGetResponse_nextCursorMember1;
export interface TicketsGetResponse_nextCursorMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Builds and executes requests for operations under /tickets
 */
export interface TicketsRequestBuilder extends BaseRequestBuilder<TicketsRequestBuilder> {
    /**
     * Gets an item from the teambattles.tickets.item collection
     * @param ticketId Ticket ID.
     * @returns {WithTicketItemRequestBuilder}
     */
    byTicketId(ticketId: string): WithTicketItemRequestBuilder;
    /**
     * Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<TicketsGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<TicketsRequestBuilderGetQueryParameters> | undefined): Promise<TicketsGetResponse | undefined>;
    /**
     * Creates a support ticket owned by the API key owner. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Creates a self-filed support ticket owned by the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<CreateTicketResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: CreateTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<CreateTicketResponse | undefined>;
    /**
     * Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<TicketsRequestBuilderGetQueryParameters> | undefined): RequestInformation;
    /**
     * Creates a support ticket owned by the API key owner. Requires the tickets.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Creates a self-filed support ticket owned by the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: CreateTicketRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Returns the API key owner's tickets, newest first, with cursor pagination. Requires the tickets.read scope.
 */
export interface TicketsRequestBuilderGetQueryParameters {
    /**
     * Opaque continuation cursor from a prior page's nextCursor.
     */
    cursor?: string;
    /**
     * Page size (1-100). Defaults to 25.
     */
    limit?: string;
}
/**
 * Uri template for the request builder.
 */
export declare const TicketsRequestBuilderUriTemplate = "";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const TicketsRequestBuilderNavigationMetadata: Record<Exclude<keyof TicketsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const TicketsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map