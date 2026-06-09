import { type RuleWriteResponse, type UpdateGameRulesRequestBody } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/rules/update
 */
export interface UpdateRequestBuilder extends BaseRequestBuilder<UpdateRequestBuilder> {
    /**
     * Creates or updates enforced rules for a league game. Requires a league-operator key bound to the league and the league rules capability.
     * @param body Updates league game rules.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<RuleWriteResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: UpdateGameRulesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<RuleWriteResponse | undefined>;
    /**
     * Creates or updates enforced rules for a league game. Requires a league-operator key bound to the league and the league rules capability.
     * @param body Updates league game rules.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: UpdateGameRulesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const UpdateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/rules/update";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const UpdateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map