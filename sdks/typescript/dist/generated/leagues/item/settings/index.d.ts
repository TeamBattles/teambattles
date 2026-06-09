import { type LeagueSettingsResponse } from '../../../models/index.js';
import { type EnabledRequestBuilder } from './enabled/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/settings
 */
export interface SettingsRequestBuilder extends BaseRequestBuilder<SettingsRequestBuilder> {
    /**
     * The enabled property
     */
    get enabled(): EnabledRequestBuilder;
    /**
     * Returns full league settings for admin tooling. Requires a league-operator key bound to the league and leagues.settings_read:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueSettingsResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueSettingsResponse | undefined>;
    /**
     * Returns full league settings for admin tooling. Requires a league-operator key bound to the league and leagues.settings_read:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const SettingsRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/settings";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const SettingsRequestBuilderNavigationMetadata: Record<Exclude<keyof SettingsRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const SettingsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map