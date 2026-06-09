import { type UpdateLeagueCooldownConfigRequestBody, type UpdateLeagueCooldownConfigResponse } from '../../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/cooldowns/config/update
 */
export interface UpdateRequestBuilder extends BaseRequestBuilder<UpdateRequestBuilder> {
    /**
     * Updates the league member cooldown configuration. Requires a league-operator key bound to the league and the league cooldowns capability.
     * @param body Updates league member cooldown configuration.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<UpdateLeagueCooldownConfigResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 409 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: UpdateLeagueCooldownConfigRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<UpdateLeagueCooldownConfigResponse | undefined>;
    /**
     * Updates the league member cooldown configuration. Requires a league-operator key bound to the league and the league cooldowns capability.
     * @param body Updates league member cooldown configuration.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: UpdateLeagueCooldownConfigRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const UpdateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/cooldowns/config/update";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const UpdateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map