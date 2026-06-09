import { type LeagueTemplates, type LeagueTemplatesRequestBody } from '../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/templates
 */
export interface TemplatesRequestBuilder extends BaseRequestBuilder<TemplatesRequestBuilder> {
    /**
     * Returns league rule templates visible to authenticated API clients, optionally filtered by game or official status. Requires leagues.league_public:read.
     * @param body Template filters.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueTemplates>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: LeagueTemplatesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueTemplates | undefined>;
    /**
     * Returns league rule templates visible to authenticated API clients, optionally filtered by game or official status. Requires leagues.league_public:read.
     * @param body Template filters.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: LeagueTemplatesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const TemplatesRequestBuilderUriTemplate = "{+baseurl}/leagues/templates";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const TemplatesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map