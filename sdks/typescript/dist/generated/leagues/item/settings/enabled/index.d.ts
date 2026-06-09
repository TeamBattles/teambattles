import { type SetLeagueEnabledRequestBody, type SetLeagueEnabledResponse } from '../../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/settings/enabled
 */
export interface EnabledRequestBuilder extends BaseRequestBuilder<EnabledRequestBuilder> {
    /**
     * Enables or disables a league. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
     * @param body League enabled-state update.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<SetLeagueEnabledResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: SetLeagueEnabledRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<SetLeagueEnabledResponse | undefined>;
    /**
     * Enables or disables a league. Requires a league-operator key bound to the league and leagues.league_admin:read-write; Convex re-checks current OWNER authority.
     * @param body League enabled-state update.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: SetLeagueEnabledRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const EnabledRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/settings/enabled";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const EnabledRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map