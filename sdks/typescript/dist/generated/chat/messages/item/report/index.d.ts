import { type ReportChatMessageRequestBody, type ReportChatMessageResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /chat/messages/{messageId}/report
 */
export interface ReportRequestBuilder extends BaseRequestBuilder<ReportRequestBuilder> {
    /**
     * Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message's chat room; a non-participant receives 403. System messages and the owner's own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Reports a chat message for staff moderation review.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ReportChatMessageResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: ReportChatMessageRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ReportChatMessageResponse | undefined>;
    /**
     * Reports a chat message for staff moderation as the API key owner. The owner must be a participant of the message's chat room; a non-participant receives 403. System messages and the owner's own messages cannot be reported. Reporting the same message twice is idempotent (returns the existing report with alreadyReported: true). Requires the chat.write scope and the writes feature. Supports the Idempotency-Key header.
     * @param body Reports a chat message for staff moderation review.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: ReportChatMessageRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ReportRequestBuilderUriTemplate = "{+baseurl}/chat/messages/{messageId}/report";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ReportRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map