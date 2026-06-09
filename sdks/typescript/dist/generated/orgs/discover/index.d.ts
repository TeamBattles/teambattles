import { type ApiOrganizationSummary } from '../../models/index.js';
import { type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {DiscoverGetResponse}
 */
export declare function createDiscoverGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param DiscoverGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoDiscoverGetResponse(discoverGetResponse?: Partial<DiscoverGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Envelope containing organizations, count, and a response timestamp.
 */
export interface DiscoverGetResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The organizations property
     */
    organizations?: ApiOrganizationSummary[] | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * Builds and executes requests for operations under /orgs/discover
 */
export interface DiscoverRequestBuilder extends BaseRequestBuilder<DiscoverRequestBuilder> {
    /**
     * Returns a neutral discovery list of active, public, non-disabled organizations. Results do not exclude organizations the API key owner belongs to and do not include join-request flags. Requires orgs.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<DiscoverGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<DiscoverRequestBuilderGetQueryParameters> | undefined): Promise<DiscoverGetResponse | undefined>;
    /**
     * Returns a neutral discovery list of active, public, non-disabled organizations. Results do not exclude organizations the API key owner belongs to and do not include join-request flags. Requires orgs.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<DiscoverRequestBuilderGetQueryParameters> | undefined): RequestInformation;
}
/**
 * Returns a neutral discovery list of active, public, non-disabled organizations. Results do not exclude organizations the API key owner belongs to and do not include join-request flags. Requires orgs.profile:read.
 */
export interface DiscoverRequestBuilderGetQueryParameters {
    limit?: number;
    /**
     * Optional organization name search.
     */
    search?: string;
}
/**
 * Serializes information the current object
 * @param DiscoverGetResponse The instance to serialize from.
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeDiscoverGetResponse(writer: SerializationWriter, discoverGetResponse?: Partial<DiscoverGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Uri template for the request builder.
 */
export declare const DiscoverRequestBuilderUriTemplate = "{+baseurl}/orgs/discover{?limit*,search*}";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const DiscoverRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map