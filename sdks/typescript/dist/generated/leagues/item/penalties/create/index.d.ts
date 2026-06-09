import { type CreatePenaltyRequestBody, type CreatePenaltyResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/penalties/create
 */
export interface CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /**
     * Issues a warning, match-forfeit penalty, or point deduction to a league team. Requires a league-operator key bound to the league and the league penalties capability.
     * @param body Creates a league team penalty.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<CreatePenaltyResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: CreatePenaltyRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<CreatePenaltyResponse | undefined>;
    /**
     * Issues a warning, match-forfeit penalty, or point deduction to a league team. Requires a league-operator key bound to the league and the league penalties capability.
     * @param body Creates a league team penalty.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: CreatePenaltyRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const CreateRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/penalties/create";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const CreateRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map