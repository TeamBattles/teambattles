import { type ReorderDisplayRulesRequestBody, type ReorderDisplayRulesResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/display-rules/reorder
 */
export interface ReorderRequestBuilder extends BaseRequestBuilder<ReorderRequestBuilder> {
    /**
     * Reorders display rules for a league game. Requires a league-operator key bound to the league and the league display_rules capability.
     * @param body Reorders display rules.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ReorderDisplayRulesResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: ReorderDisplayRulesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ReorderDisplayRulesResponse | undefined>;
    /**
     * Reorders display rules for a league game. Requires a league-operator key bound to the league and the league display_rules capability.
     * @param body Reorders display rules.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: ReorderDisplayRulesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ReorderRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/display-rules/reorder";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ReorderRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map