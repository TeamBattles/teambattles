import { type ApiUserTrophy } from '../../../models/index.js';
import { type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TrophiesGetResponse}
 */
export declare function createTrophiesGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param TrophiesGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTrophiesGetResponse(trophiesGetResponse?: Partial<TrophiesGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TrophiesGetResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTrophiesGetResponse(writer: SerializationWriter, trophiesGetResponse?: Partial<TrophiesGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Envelope containing trophies, count, and a response timestamp.
 */
export interface TrophiesGetResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
    /**
     * The trophies property
     */
    trophies?: ApiUserTrophy[] | null;
}
/**
 * Builds and executes requests for operations under /users/{identifier}/trophies
 */
export interface TrophiesRequestBuilder extends BaseRequestBuilder<TrophiesRequestBuilder> {
    /**
     * Returns user trophies for public profiles or self. Event linkage fields such as matchId and tournamentId are omitted. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<TrophiesGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<TrophiesGetResponse | undefined>;
    /**
     * Returns user trophies for public profiles or self. Event linkage fields such as matchId and tournamentId are omitted. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const TrophiesRequestBuilderUriTemplate = "{+baseurl}/users/{identifier}/trophies";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const TrophiesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map