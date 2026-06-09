import { type ApiTeamProfile } from '../../models/index.js';
import { type MatchesRequestBuilder } from './matches/index.js';
import { type MembersRequestBuilder } from './members/index.js';
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
 * Envelope containing team plus a response timestamp.
 */
export interface WithIdentifierGetResponse extends Parsable {
    /**
     * API-safe team profile.
     */
    team?: ApiTeamProfile | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * Builds and executes requests for operations under /teams/{identifier}
 */
export interface WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    /**
     * The matches property
     */
    get matches(): MatchesRequestBuilder;
    /**
     * The members property
     */
    get members(): MembersRequestBuilder;
    /**
     * Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
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
     * Returns an API-safe team profile projection. Active team members are treated as public visibility for their own team. Requires teams.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithIdentifierItemRequestBuilderUriTemplate = "{+baseurl}/teams/{identifier}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithIdentifierItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithIdentifierItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithIdentifierItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map