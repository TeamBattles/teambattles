import { type UpsertDisplayRuleRequestBody, type UpsertDisplayRuleResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/display-rules/upsert
 */
export interface UpsertRequestBuilder extends BaseRequestBuilder<UpsertRequestBuilder> {
    /**
     * Creates or updates an informational display rule for a league game. Requires a league-operator key bound to the league and the league display_rules capability.
     * @param body Creates or updates a display rule.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<UpsertDisplayRuleResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: UpsertDisplayRuleRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<UpsertDisplayRuleResponse | undefined>;
    /**
     * Creates or updates an informational display rule for a league game. Requires a league-operator key bound to the league and the league display_rules capability.
     * @param body Creates or updates a display rule.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: UpsertDisplayRuleRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const UpsertRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/display-rules/upsert";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const UpsertRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map