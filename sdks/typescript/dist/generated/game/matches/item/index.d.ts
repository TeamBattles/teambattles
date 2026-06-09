import { type GameMatchDetailResponse } from '../../../models/index.js';
import { type ForfeitRequestBuilder } from './forfeit/index.js';
import { type PlayerStatsRequestBuilder } from './playerStats/index.js';
import { type RostersRequestBuilder } from './rosters/index.js';
import { type ScoresRequestBuilder } from './scores/index.js';
import { type StatusRequestBuilder } from './status/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /game/matches/{matchId}
 */
export interface WithMatchItemRequestBuilder extends BaseRequestBuilder<WithMatchItemRequestBuilder> {
    /**
     * The forfeit property
     */
    get forfeit(): ForfeitRequestBuilder;
    /**
     * The playerStats property
     */
    get playerStats(): PlayerStatsRequestBuilder;
    /**
     * The rosters property
     */
    get rosters(): RostersRequestBuilder;
    /**
     * The scores property
     */
    get scores(): ScoresRequestBuilder;
    /**
     * The status property
     */
    get status(): StatusRequestBuilder;
    /**
     * Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<GameMatchDetailResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<GameMatchDetailResponse | undefined>;
    /**
     * Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithMatchItemRequestBuilderUriTemplate = "{+baseurl}/game/matches/{matchId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithMatchItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithMatchItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithMatchItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map