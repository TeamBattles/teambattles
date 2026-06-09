import { type IssueCooldownRequestBody, type IssueCooldownResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns/issue
 */
export interface IssueRequestBuilder extends BaseRequestBuilder<IssueRequestBuilder> {
    /**
     * Issues or updates a manual cooldown for a league member. Requires a league-operator key bound to the league and the league cooldowns capability.
     * @param body Issues or updates a manual league member cooldown.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<IssueCooldownResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: IssueCooldownRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<IssueCooldownResponse | undefined>;
    /**
     * Issues or updates a manual cooldown for a league member. Requires a league-operator key bound to the league and the league cooldowns capability.
     * @param body Issues or updates a manual league member cooldown.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: IssueCooldownRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const IssueRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/cooldowns/issue";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const IssueRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map