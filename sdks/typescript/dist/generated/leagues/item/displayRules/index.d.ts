import { type LeagueDisplayRules, type LeagueDisplayRulesRequestBody } from '../../../models/index.js';
import { type WithDisplayRuleItemRequestBuilder } from './item/index.js';
import { type ReorderRequestBuilder } from './reorder/index.js';
import { type UpsertRequestBuilder } from './upsert/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/display-rules
 */
export interface DisplayRulesRequestBuilder extends BaseRequestBuilder<DisplayRulesRequestBuilder> {
    /**
     * The reorder property
     */
    get reorder(): ReorderRequestBuilder;
    /**
     * The upsert property
     */
    get upsert(): UpsertRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item.displayRules.item collection
     * @param displayRuleId Display rule ID.
     * @returns {WithDisplayRuleItemRequestBuilder}
     */
    byDisplayRuleId(displayRuleId: string): WithDisplayRuleItemRequestBuilder;
    /**
     * Returns display rules configured for a league game. Requires leagues.league_public:read.
     * @param body Display rule selector.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueDisplayRules>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(body: LeagueDisplayRulesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueDisplayRules | undefined>;
    /**
     * Returns display rules configured for a league game. Requires leagues.league_public:read.
     * @param body Display rule selector.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: LeagueDisplayRulesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const DisplayRulesRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/display-rules";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const DisplayRulesRequestBuilderNavigationMetadata: Record<Exclude<keyof DisplayRulesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const DisplayRulesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map