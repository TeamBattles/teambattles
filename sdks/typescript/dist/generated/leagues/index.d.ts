import { type DiscoverLeaguesRequestBody, type LeagueSummary } from '../models/index.js';
import { type WithIdentifierItemRequestBuilder } from './item/index.js';
import { type TemplatesRequestBuilder } from './templates/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaguesPostResponse_pagination}
 */
export declare function createLeaguesPostResponse_paginationFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {LeaguesPostResponse}
 */
export declare function createLeaguesPostResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param LeaguesPostResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaguesPostResponse(leaguesPostResponse?: Partial<LeaguesPostResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * The deserialization information for the current model
 * @param LeaguesPostResponse_pagination The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoLeaguesPostResponse_pagination(leaguesPostResponse_pagination?: Partial<LeaguesPostResponse_pagination> | undefined): Record<string, (node: ParseNode) => void>;
export interface LeaguesPostResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The leagues property
     */
    leagues?: LeagueSummary[] | null;
    /**
     * The pagination property
     */
    pagination?: LeaguesPostResponse_pagination | null;
    /**
     * The timestamp property
     */
    timestamp?: string | null;
}
export interface LeaguesPostResponse_pagination extends Parsable {
    /**
     * The limit property
     */
    limit?: number | null;
    /**
     * The page property
     */
    page?: number | null;
    /**
     * The total property
     */
    total?: number | null;
    /**
     * The totalPages property
     */
    totalPages?: number | null;
}
/**
 * Builds and executes requests for operations under /leagues
 */
export interface LeaguesRequestBuilder extends BaseRequestBuilder<LeaguesRequestBuilder> {
    /**
     * The templates property
     */
    get templates(): TemplatesRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item collection
     * @param identifier League slug or Convex league ID.
     * @returns {WithIdentifierItemRequestBuilder}
     */
    byIdentifier(identifier: string): WithIdentifierItemRequestBuilder;
    /**
     * Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
     * @param body Filters and offset pagination for discovering leagues.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeaguesPostResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     */
    post(body: DiscoverLeaguesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeaguesPostResponse | undefined>;
    /**
     * Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
     * @param body Filters and offset pagination for discovering leagues.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: DiscoverLeaguesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaguesPostResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaguesPostResponse(writer: SerializationWriter, leaguesPostResponse?: Partial<LeaguesPostResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param LeaguesPostResponse_pagination The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeLeaguesPostResponse_pagination(writer: SerializationWriter, leaguesPostResponse_pagination?: Partial<LeaguesPostResponse_pagination> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const LeaguesRequestBuilderUriTemplate = "{+baseurl}/leagues";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const LeaguesRequestBuilderNavigationMetadata: Record<Exclude<keyof LeaguesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const LeaguesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map