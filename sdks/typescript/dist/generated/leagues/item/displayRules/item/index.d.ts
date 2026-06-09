import { type RemoveDisplayRuleResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/display-rules/{displayRuleId}
 */
export interface WithDisplayRuleItemRequestBuilder extends BaseRequestBuilder<WithDisplayRuleItemRequestBuilder> {
    /**
     * Removes an informational display rule. Requires a league-operator key bound to the league and the league display_rules capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<RemoveDisplayRuleResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    delete(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<RemoveDisplayRuleResponse | undefined>;
    /**
     * Removes an informational display rule. Requires a league-operator key bound to the league and the league display_rules capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toDeleteRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithDisplayRuleItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/display-rules/{displayRuleId}";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithDisplayRuleItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map