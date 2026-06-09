import { type DeleteLeagueSeasonResponse, type LeagueSeason } from '../../../../models/index.js';
import { type ActivateRequestBuilder } from './activate/index.js';
import { type CompleteRequestBuilder } from './complete/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/seasons/{seasonId}
 */
export interface WithSeasonItemRequestBuilder extends BaseRequestBuilder<WithSeasonItemRequestBuilder> {
    /**
     * The activate property
     */
    get activate(): ActivateRequestBuilder;
    /**
     * The complete property
     */
    get complete(): CompleteRequestBuilder;
    /**
     * Deletes an upcoming league season. Requires the league seasons capability. Replays are not deduped; existing state guards return the current state error if the season no longer exists or is no longer upcoming.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<DeleteLeagueSeasonResponse>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    delete(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<DeleteLeagueSeasonResponse | undefined>;
    /**
     * Returns a single season that belongs to the resolved league. Requires leagues.league_public:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueSeason>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueSeason | undefined>;
    /**
     * Deletes an upcoming league season. Requires the league seasons capability. Replays are not deduped; existing state guards return the current state error if the season no longer exists or is no longer upcoming.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toDeleteRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
    /**
     * Returns a single season that belongs to the resolved league. Requires leagues.league_public:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithSeasonItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/seasons/{seasonId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithSeasonItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithSeasonItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithSeasonItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map