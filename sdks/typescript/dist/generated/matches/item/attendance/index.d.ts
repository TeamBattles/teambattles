import { type UpdateAttendanceRequestBody, type UpdateAttendanceResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/{matchId}/attendance
 */
export interface AttendanceRequestBuilder extends BaseRequestBuilder<AttendanceRequestBuilder> {
    /**
     * Updates the personal API key owner's own attendance status for a match. The owner must already be rostered in the match; the platform may swap active and bench players automatically. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Updates the API key owner's own attendance status for a match.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<UpdateAttendanceResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: UpdateAttendanceRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<UpdateAttendanceResponse | undefined>;
    /**
     * Updates the personal API key owner's own attendance status for a match. The owner must already be rostered in the match; the platform may swap active and bench players automatically. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
     * @param body Updates the API key owner's own attendance status for a match.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: UpdateAttendanceRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const AttendanceRequestBuilderUriTemplate = "{+baseurl}/matches/{matchId}/attendance";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const AttendanceRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map