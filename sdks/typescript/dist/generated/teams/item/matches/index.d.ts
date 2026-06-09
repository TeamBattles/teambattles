import { type MatchesRequestBody, type UserMatch } from '../../../models/index.js';
import { type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
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
export interface MatchesPostResponse extends Parsable {
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
    page?: UserMatch[] | null;
}
/**
 * Builds and executes requests for operations under /teams/{identifier}/matches
 */
export interface MatchesRequestBuilder extends BaseRequestBuilder<MatchesRequestBuilder> {
    /**
     * Returns matches for a specific team (resolved by id or slug), newest first, with cursor pagination. The authenticated user must be an active member of the team. Requires the matches.team_matches:read permission.
     * @param body Filters and cursor pagination for listing matches.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<MatchesPostResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(body: MatchesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<MatchesPostResponse | undefined>;
    /**
     * Returns matches for a specific team (resolved by id or slug), newest first, with cursor pagination. The authenticated user must be an active member of the team. Requires the matches.team_matches:read permission.
     * @param body Filters and cursor pagination for listing matches.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: MatchesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MatchesPostResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMatchesPostResponse(writer: SerializationWriter, matchesPostResponse?: Partial<MatchesPostResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const MatchesRequestBuilderUriTemplate = "{+baseurl}/teams/{identifier}/matches";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const MatchesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map