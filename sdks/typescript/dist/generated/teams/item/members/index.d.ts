import { type ApiMember } from '../../../models/index.js';
import { type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {MembersGetResponse}
 */
export declare function createMembersGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param MembersGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoMembersGetResponse(membersGetResponse?: Partial<MembersGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Envelope containing members, count, and a response timestamp.
 */
export interface MembersGetResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The members property
     */
    members?: ApiMember[] | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * Builds and executes requests for operations under /teams/{identifier}/members
 */
export interface MembersRequestBuilder extends BaseRequestBuilder<MembersRequestBuilder> {
    /**
     * Returns active roster rows when the team is public or the API key owner is an active team member. Requires teams.roster:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<MembersGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<MembersGetResponse | undefined>;
    /**
     * Returns active roster rows when the team is public or the API key owner is an active team member. Requires teams.roster:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param MembersGetResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeMembersGetResponse(writer: SerializationWriter, membersGetResponse?: Partial<MembersGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const MembersRequestBuilderUriTemplate = "{+baseurl}/teams/{identifier}/members";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const MembersRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map