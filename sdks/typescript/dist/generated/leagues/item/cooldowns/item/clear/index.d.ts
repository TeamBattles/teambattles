import { type ClearCooldownResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns/{cooldownId}/clear
 */
export interface ClearRequestBuilder extends BaseRequestBuilder<ClearRequestBuilder> {
    /**
     * Clears an active league member cooldown early. Requires a league-operator key bound to the league and the league cooldowns capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ClearCooldownResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ClearCooldownResponse | undefined>;
    /**
     * Clears an active league member cooldown early. Requires a league-operator key bound to the league and the league cooldowns capability.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ClearRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/cooldowns/{cooldownId}/clear";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ClearRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map