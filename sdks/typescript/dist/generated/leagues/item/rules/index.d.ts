import { type LeagueRules, type RulesRequestBody } from '../../../models/index.js';
import { type ApplyTemplateRequestBuilder } from './applyTemplate/index.js';
import { type UpdateRequestBuilder } from './update/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/rules
 */
export interface RulesRequestBuilder extends BaseRequestBuilder<RulesRequestBuilder> {
    /**
     * The applyTemplate property
     */
    get applyTemplate(): ApplyTemplateRequestBuilder;
    /**
     * The update property
     */
    get update(): UpdateRequestBuilder;
    /**
     * Returns the game rules and points configuration for a league + game, resolved by league slug. Requires the leagues.league_public:read permission.
     * @param body Game selector for league rules and points config.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueRules>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(body: RulesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueRules | undefined>;
    /**
     * Returns the game rules and points configuration for a league + game, resolved by league slug. Requires the leagues.league_public:read permission.
     * @param body Game selector for league rules and points config.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: RulesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const RulesRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/rules";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const RulesRequestBuilderNavigationMetadata: Record<Exclude<keyof RulesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const RulesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map