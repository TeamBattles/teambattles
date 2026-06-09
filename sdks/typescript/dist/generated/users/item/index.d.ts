import { type ApiUserProfile } from '../../models/index.js';
import { type ConnectionsRequestBuilder } from './connections/index.js';
import { type OrganizationsRequestBuilder } from './organizations/index.js';
import { type StatsRequestBuilder } from './stats/index.js';
import { type StreamRequestBuilder } from './stream/index.js';
import { type TeamsRequestBuilder } from './teams/index.js';
import { type TrophiesRequestBuilder } from './trophies/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {WithIdentifierGetResponse}
 */
export declare function createWithIdentifierGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param WithIdentifierGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoWithIdentifierGetResponse(withIdentifierGetResponse?: Partial<WithIdentifierGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param WithIdentifierGetResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeWithIdentifierGetResponse(writer: SerializationWriter, withIdentifierGetResponse?: Partial<WithIdentifierGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Envelope containing user plus a response timestamp.
 */
export interface WithIdentifierGetResponse extends Parsable {
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
    /**
     * API-safe public user profile.
     */
    user?: ApiUserProfile | null;
}
/**
 * Builds and executes requests for operations under /users/{identifier}
 */
export interface WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    /**
     * The connections property
     */
    get connections(): ConnectionsRequestBuilder;
    /**
     * The organizations property
     */
    get organizations(): OrganizationsRequestBuilder;
    /**
     * The stats property
     */
    get stats(): StatsRequestBuilder;
    /**
     * The stream property
     */
    get stream(): StreamRequestBuilder;
    /**
     * The teams property
     */
    get teams(): TeamsRequestBuilder;
    /**
     * The trophies property
     */
    get trophies(): TrophiesRequestBuilder;
    /**
     * Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<WithIdentifierGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<WithIdentifierGetResponse | undefined>;
    /**
     * Returns an API-safe user profile projection. Private profiles return only the base profile envelope. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithIdentifierItemRequestBuilderUriTemplate = "{+baseurl}/users/{identifier}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithIdentifierItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithIdentifierItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithIdentifierItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map