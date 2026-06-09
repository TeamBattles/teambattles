import { type ApiUserStats } from '../../../models/index.js';
import { type BaseRequestBuilder, type Parsable, type ParseNode, type RequestConfiguration, type RequestInformation, type RequestsMetadata, type SerializationWriter } from '@microsoft/kiota-abstractions';
/**
 * Creates a new instance of the appropriate class based on discriminator value
 * @param parseNode The parse node to use to read the discriminator value and create the object
 * @returns {StatsGetResponse}
 */
export declare function createStatsGetResponseFromDiscriminatorValue(parseNode: ParseNode | undefined): ((instance?: Parsable) => Record<string, (node: ParseNode) => void>);
/**
 * The deserialization information for the current model
 * @param StatsGetResponse The instance to deserialize into.
 * @returns {Record<string, (node: ParseNode) => void>}
 */
export declare function deserializeIntoStatsGetResponse(statsGetResponse?: Partial<StatsGetResponse> | undefined): Record<string, (node: ParseNode) => void>;
/**
 * Serializes information the current object
 * @param isSerializingDerivedType A boolean indicating whether the serialization is for a derived type.
 * @param StatsGetResponse The instance to serialize from.
 * @param writer Serialization writer to use to serialize this model
 */
export declare function serializeStatsGetResponse(writer: SerializationWriter, statsGetResponse?: Partial<StatsGetResponse> | undefined | null, isSerializingDerivedType?: boolean): void;
/**
 * Envelope containing stats plus a response timestamp.
 */
export interface StatsGetResponse extends Parsable {
    /**
     * API-safe aggregate user stats.
     */
    stats?: ApiUserStats | null;
    /**
     * ISO 8601 timestamp.
     */
    timestamp?: string | null;
}
/**
 * Builds and executes requests for operations under /users/{identifier}/stats
 */
export interface StatsRequestBuilder extends BaseRequestBuilder<StatsRequestBuilder> {
    /**
     * Returns aggregate user stats for public or limited profiles, plus self. Private non-self profiles return 403. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<StatsGetResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<StatsGetResponse | undefined>;
    /**
     * Returns aggregate user stats for public or limited profiles, plus self. Private non-self profiles return 403. Requires users.profile:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const StatsRequestBuilderUriTemplate = "{+baseurl}/users/{identifier}/stats";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const StatsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map