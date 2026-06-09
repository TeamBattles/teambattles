import { type ApplyRuleTemplateRequestBody, type ApplyRuleTemplateResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/rules/apply-template
 */
export interface ApplyTemplateRequestBuilder extends BaseRequestBuilder<ApplyTemplateRequestBuilder> {
    /**
     * Applies a rule template to a league game. Requires a league-operator key bound to the league and the league rules capability.
     * @param body Applies a rule template.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApplyRuleTemplateResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: ApplyRuleTemplateRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApplyRuleTemplateResponse | undefined>;
    /**
     * Applies a rule template to a league game. Requires a league-operator key bound to the league and the league rules capability.
     * @param body Applies a rule template.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: ApplyRuleTemplateRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ApplyTemplateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/rules/apply-template";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ApplyTemplateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map