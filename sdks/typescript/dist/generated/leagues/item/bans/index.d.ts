import { type BansRequestBody, type LeagueBans } from '../../../models/index.js';
import { type CreateRequestBuilder } from './create/index.js';
import { type WithBanItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/bans
 */
export interface BansRequestBuilder extends BaseRequestBuilder<BansRequestBuilder> {
    /**
     * The create property
     */
    get create(): CreateRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item.bans.item collection
     * @param banId League ban ID.
     * @returns {WithBanItemRequestBuilder}
     */
    byBanId(banId: string): WithBanItemRequestBuilder;
    /**
     * Returns team bans for a league resolved by slug, with optional status filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param body Status filter for league team bans.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueBans>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(body: BansRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueBans | undefined>;
    /**
     * Returns team bans for a league resolved by slug, with optional status filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param body Status filter for league team bans.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: BansRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const BansRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/bans";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const BansRequestBuilderNavigationMetadata: Record<Exclude<keyof BansRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const BansRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map