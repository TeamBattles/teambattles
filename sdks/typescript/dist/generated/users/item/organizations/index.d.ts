import { type ApiUserOrganizationMembership } from '../../../models/index.js';
import { type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {OrganizationsGetResponse}
 */
export declare function createOrganizationsGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param OrganizationsGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoOrganizationsGetResponse(organizationsGetResponse?: Partial<OrganizationsGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Envelope containing organizations, count, and a response timestamp.
 */
export interface OrganizationsGetResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The organizations property
     */
    organizations?: ApiUserOrganizationMembership[] | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * Builds and executes requests for operations under /users/{identifier}/organizations
 */
export interface OrganizationsRequestBuilder extends BaseRequestBuilder<OrganizationsRequestBuilder> {
    /**
     * Returns API-safe organization affiliation rows for public or limited profiles, plus self. Non-self rows include only public organizations. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<OrganizationsGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<OrganizationsGetResponse | undefined>;
    /**
     * Returns API-safe organization affiliation rows for public or limited profiles, plus self. Non-self rows include only public organizations. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param OrganizationsGetResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeOrganizationsGetResponse(writer: SerializationWriter, organizationsGetResponse?: Partial<OrganizationsGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const OrganizationsRequestBuilderUriTemplate = "{+baseurl}/users/{identifier}/organizations";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const OrganizationsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map