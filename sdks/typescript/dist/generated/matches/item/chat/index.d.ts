import { type ChatMessage, type SendChatMessageRequestBody, type SendChatMessageResponse } from '../../../models/index.js';
import { type AdditionalDataHolder, type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
export interface ChatGetResponse extends Parsable {
    /**
     * The data property
     */
    data?: ChatMessage[] | null;
    /**
     * The hasMore property
     */
    hasMore?: boolean | null;
    /**
     * The nextCursor property
     */
    nextCursor?: ChatGetResponse_nextCursorMember1 | string | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export type ChatGetResponse_nextCursor = ChatGetResponse_nextCursorMember1 | string;
export interface ChatGetResponse_nextCursorMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Builds and executes requests for operations under /matches/{matchId}/chat
 */
export interface ChatRequestBuilder extends BaseRequestBuilder<ChatRequestBuilder> {
    /**
     * Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ChatGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<ChatRequestBuilderGetQueryParameters> | undefined): Promise<ChatGetResponse | undefined>;
    /**
     * Sends a message to a match's chat room as the API key owner. The owner must be a participant of the match; a non-participant receives 403. Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Sends a message to the match chat room as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<SendChatMessageResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: SendChatMessageRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<SendChatMessageResponse | undefined>;
    /**
     * Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<ChatRequestBuilderGetQueryParameters> | undefined): RequestInformation;
    /**
     * Sends a message to a match's chat room as the API key owner. The owner must be a participant of the match; a non-participant receives 403. Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Sends a message to the match chat room as the API key owner.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: SendChatMessageRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Returns the messages of a match's chat room, newest first, with cursor pagination. The API key owner must be a participant of the match (a member of one of the match's teams); a non-participant receives 404. Requires the chat.read scope.
 */
export interface ChatRequestBuilderGetQueryParameters {
    /**
     * Opaque continuation cursor from a prior page's nextCursor.
     */
    cursor?: string;
    /**
     * Page size (1-100). Defaults to 50.
     */
    limit?: string;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatGetResponse_nextCursorMember1 | string}
 */
export declare function createChatGetResponse_nextCursorFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatGetResponse_nextCursorMember1}
 */
export declare function createChatGetResponse_nextCursorMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ChatGetResponse}
 */
export declare function createChatGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param ChatGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatGetResponse(chatGetResponse?: Partial<ChatGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatGetResponse_nextCursor The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatGetResponse_nextCursor(chatGetResponse_nextCursor?: Partial<Parsable | ChatGetResponse_nextCursorMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param ChatGetResponse_nextCursorMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoChatGetResponse_nextCursorMember1(chatGetResponse_nextCursorMember1?: Partial<ChatGetResponse_nextCursorMember1> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Serializes information the current object
 * @param ChatGetResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatGetResponse(writer: SerializationWriter, chatGetResponse?: Partial<ChatGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatGetResponse_nextCursor The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatGetResponse_nextCursor(writer: SerializationWriter, chatGetResponse_nextCursor?: Partial<Parsable | ChatGetResponse_nextCursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param ChatGetResponse_nextCursorMember1 The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeChatGetResponse_nextCursorMember1(writer: SerializationWriter, chatGetResponse_nextCursorMember1?: Partial<ChatGetResponse_nextCursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const ChatRequestBuilderUriTemplate = "";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ChatRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map