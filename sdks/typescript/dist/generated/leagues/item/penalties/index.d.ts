import { type LeaguePenalties, type PenaltiesRequestBody } from '../../../models/index.js';
import { type CreateRequestBuilder } from './create/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/penalties
 */
export interface PenaltiesRequestBuilder extends BaseRequestBuilder<PenaltiesRequestBuilder> {
    /**
     * The create property
     */
    get create(): CreateRequestBuilder;
    /**
     * Returns penalties and/or member cooldowns for a league resolved by slug, with optional filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param body Type, team, game, and limit filters for league penalties and cooldowns.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeaguePenalties>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(body: PenaltiesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeaguePenalties | undefined>;
    /**
     * Returns penalties and/or member cooldowns for a league resolved by slug, with optional filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param body Type, team, game, and limit filters for league penalties and cooldowns.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(body: PenaltiesRequestBody, requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const PenaltiesRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/penalties";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const PenaltiesRequestBuilderNavigationMetadata: Record<Exclude<keyof PenaltiesRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const PenaltiesRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map