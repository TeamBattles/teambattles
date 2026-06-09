import { type ApiUserConnection } from '../../../models/index.js';
import { type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Envelope containing connections, count, and a response timestamp.
 */
export interface ConnectionsGetResponse extends Parsable {
    /**
     * The connections property
     */
    connections?: ApiUserConnection[] | null;
    /**
     * The count property
     */
    count?: number | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * Builds and executes requests for operations under /users/{identifier}/connections
 */
export interface ConnectionsRequestBuilder extends BaseRequestBuilder<ConnectionsRequestBuilder> {
    /**
     * Returns user connections for public profiles or self. Non-self responses include only connections marked visible on the profile. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ConnectionsGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ConnectionsGetResponse | undefined>;
    /**
     * Returns user connections for public profiles or self. Non-self responses include only connections marked visible on the profile. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {ConnectionsGetResponse}
 */
export declare function createConnectionsGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param ConnectionsGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoConnectionsGetResponse(connectionsGetResponse?: Partial<ConnectionsGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Serializes information the current object
 * @param ConnectionsGetResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeConnectionsGetResponse(writer: SerializationWriter, connectionsGetResponse?: Partial<ConnectionsGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const ConnectionsRequestBuilderUriTemplate = "{+baseurl}/users/{identifier}/connections";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ConnectionsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map