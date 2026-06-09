import { type LeagueApplyEligibility, type LeagueApplyEligibilityRequestBody } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/apply-eligibility
 */
export interface ApplyEligibilityRequestBuilder extends BaseRequestBuilder<ApplyEligibilityRequestBuilder> {
    /**
     * Returns apply-to-join eligibility for the API key owner's applicable teams, or for a specified team the owner leads. Requires leagues.league_public:read.
     * @param body Optional team-specific league application eligibility selector.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueApplyEligibility>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: LeagueApplyEligibilityRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueApplyEligibility | undefined>;
    /**
     * Returns apply-to-join eligibility for the API key owner's applicable teams, or for a specified team the owner leads. Requires leagues.league_public:read.
     * @param body Optional team-specific league application eligibility selector.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: LeagueApplyEligibilityRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const ApplyEligibilityRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/apply-eligibility";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ApplyEligibilityRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map