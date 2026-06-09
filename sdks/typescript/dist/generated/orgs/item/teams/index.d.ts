import { type ApiTeamSummary } from '../../../models/index.js';
import { type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {TeamsGetResponse}
 */
export declare function createTeamsGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param TeamsGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoTeamsGetResponse(teamsGetResponse?: Partial<TeamsGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param TeamsGetResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeTeamsGetResponse(writer: SerializationWriter, teamsGetResponse?: Partial<TeamsGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Envelope containing teams, count, and a response timestamp.
 */
export interface TeamsGetResponse extends Parsable {
    /**
     * The count property
     */
    count?: number | null;
    /**
     * The teams property
     */
    teams?: ApiTeamSummary[] | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * Builds and executes requests for operations under /orgs/{identifier}/teams
 */
export interface TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /**
     * Returns organization teams when the organization is public or the API key owner is an active organization member. Non-members do not receive private or disabled teams. Requires orgs.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<TeamsGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<TeamsGetResponse | undefined>;
    /**
     * Returns organization teams when the organization is public or the API key owner is an active organization member. Non-members do not receive private or disabled teams. Requires orgs.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const TeamsRequestBuilderUriTemplate = "{+baseurl}/orgs/{identifier}/teams";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const TeamsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map