import { type CreateBanRequestBody, type CreateBanResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/bans/create
 */
export interface CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /**
     * Bans a team from the league and removes it from active/pending league participation. Requires a league-operator key bound to the league and the league bans capability.
     * @param body Creates a league team ban.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<CreateBanResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: CreateBanRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<CreateBanResponse | undefined>;
    /**
     * Bans a team from the league and removes it from active/pending league participation. Requires a league-operator key bound to the league and the league bans capability.
     * @param body Creates a league team ban.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: CreateBanRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const CreateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/bans/create";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const CreateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map