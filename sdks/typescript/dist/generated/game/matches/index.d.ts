import { type GameMatch, type ListGameMatchesBody } from '../../models/index.js';
import { type BatchScoresRequestBuilder } from './batchScores/index.js';
import { type CreateRequestBuilder } from './create/index.js';
import { type WithMatchItemRequestBuilder } from './item/index.js';
import { type AdditionalDataHolder, type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchesPostResponse_pagination_cursorMember1 | string}
 */
export declare function createMatchesPostResponse_pagination_cursorFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchesPostResponse_pagination_cursorMember1}
 */
export declare function createMatchesPostResponse_pagination_cursorMember1FromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchesPostResponse_pagination}
 */
export declare function createMatchesPostResponse_paginationFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MatchesPostResponse}
 */
export declare function createMatchesPostResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param MatchesPostResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchesPostResponse(matchesPostResponse?: Partial<MatchesPostResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchesPostResponse_pagination The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchesPostResponse_pagination(matchesPostResponse_pagination?: Partial<MatchesPostResponse_pagination> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchesPostResponse_pagination_cursor The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchesPostResponse_pagination_cursor(matchesPostResponse_pagination_cursor?: Partial<Parsable | MatchesPostResponse_pagination_cursorMember1 | string> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param MatchesPostResponse_pagination_cursorMember1 The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMatchesPostResponse_pagination_cursorMember1(matchesPostResponse_pagination_cursorMember1?: Partial<MatchesPostResponse_pagination_cursorMember1> | undefined): Record<string, (node: ParseNode) => void>;
export interface MatchesPostResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The matches property
     */
    matches?: GameMatch[] | null;
    /**
     * The pagination property
     */
    pagination?: MatchesPostResponse_pagination | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface MatchesPostResponse_pagination extends Parsable {
    /**
     * The cursor property
     */
    cursor?: MatchesPostResponse_pagination_cursorMember1 | string | null;
    /**
     * The hasMore property
     */
    hasMore?: boolean | null;
}
export type MatchesPostResponse_pagination_cursor = MatchesPostResponse_pagination_cursorMember1 | string;
export interface MatchesPostResponse_pagination_cursorMember1 extends AdditionalDataHolder, Parsable {
}
/**
 * Builds and executes requests for operations under /game/matches
 */
export interface MatchesRequestBuilder extends BaseRequestBuilder<MatchesRequestBuilder> {
    /**
     * The batchScores property
     */
    get batchScores(): BatchScoresRequestBuilder;
    /**
     * The create property
     */
    get create(): CreateRequestBuilder;
    /**
     * Gets an item from the teambattles.game.matches.item collection
     * @param matchId Match ID.
     * @returns {WithMatchItemRequestBuilder}
     */
    byMatchId(matchId: string): WithMatchItemRequestBuilder;
    /**
     * Returns matches for the API key owner's approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
     * @param body Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<MatchesPostResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     */
    post(body: ListGameMatchesBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<MatchesPostResponse | undefined>;
    /**
     * Returns matches for the API key owner's approved (bound) game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
     * @param body Status filter and cursor pagination for listing the bound key's game matches. The game is derived from the developer-app key's bound game (not a body field).
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: ListGameMatchesBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchesPostResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchesPostResponse(writer: SerializationWriter, matchesPostResponse?: Partial<MatchesPostResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchesPostResponse_pagination The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchesPostResponse_pagination(writer: SerializationWriter, matchesPostResponse_pagination?: Partial<MatchesPostResponse_pagination> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchesPostResponse_pagination_cursor The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchesPostResponse_pagination_cursor(writer: SerializationWriter, matchesPostResponse_pagination_cursor?: Partial<Parsable | MatchesPostResponse_pagination_cursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchesPostResponse_pagination_cursorMember1 The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchesPostResponse_pagination_cursorMember1(writer: SerializationWriter, matchesPostResponse_pagination_cursorMember1?: Partial<MatchesPostResponse_pagination_cursorMember1> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const MatchesRequestBuilderUriTemplate = "{+baseurl}/game/matches";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const MatchesRequestBuilderNavigationMetadata: Record<Exclude<keyof MatchesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const MatchesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map