import { type LeagueProfileResponse } from '../../models/index.js';
import { type ActivityFeedRequestBuilder } from './activityFeed/index.js';
import { type ApplyEligibilityRequestBuilder } from './applyEligibility/index.js';
import { type BansRequestBuilder } from './bans/index.js';
import { type BrandingRequestBuilder } from './branding/index.js';
import { type CooldownsRequestBuilder } from './cooldowns/index.js';
import { type DashboardRequestBuilder } from './dashboard/index.js';
import { type DisplayRulesRequestBuilder } from './displayRules/index.js';
import { type GamesRequestBuilder } from './games/index.js';
import { type MatchesRequestBuilder } from './matches/index.js';
import { type MembersRequestBuilder } from './members/index.js';
import { type OwnershipRequestBuilder } from './ownership/index.js';
import { type PenaltiesRequestBuilder } from './penalties/index.js';
import { type PointsRequestBuilder } from './points/index.js';
import { type RulesRequestBuilder } from './rules/index.js';
import { type SeasonOptionsRequestBuilder } from './seasonOptions/index.js';
import { type SeasonsRequestBuilder } from './seasons/index.js';
import { type SettingsRequestBuilder } from './settings/index.js';
import { type ShutdownRequestBuilder } from './shutdown/index.js';
import { type StandingsRequestBuilder } from './standings/index.js';
import { type TeamsRequestBuilder } from './teams/index.js';
import { type TicketsRequestBuilder } from './tickets/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}
 */
export interface WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    /**
     * The activityFeed property
     */
    get activityFeed(): ActivityFeedRequestBuilder;
    /**
     * The applyEligibility property
     */
    get applyEligibility(): ApplyEligibilityRequestBuilder;
    /**
     * The bans property
     */
    get bans(): BansRequestBuilder;
    /**
     * The branding property
     */
    get branding(): BrandingRequestBuilder;
    /**
     * The cooldowns property
     */
    get cooldowns(): CooldownsRequestBuilder;
    /**
     * The dashboard property
     */
    get dashboard(): DashboardRequestBuilder;
    /**
     * The displayRules property
     */
    get displayRules(): DisplayRulesRequestBuilder;
    /**
     * The games property
     */
    get games(): GamesRequestBuilder;
    /**
     * The matches property
     */
    get matches(): MatchesRequestBuilder;
    /**
     * The members property
     */
    get members(): MembersRequestBuilder;
    /**
     * The ownership property
     */
    get ownership(): OwnershipRequestBuilder;
    /**
     * The penalties property
     */
    get penalties(): PenaltiesRequestBuilder;
    /**
     * The points property
     */
    get points(): PointsRequestBuilder;
    /**
     * The rules property
     */
    get rules(): RulesRequestBuilder;
    /**
     * The seasonOptions property
     */
    get seasonOptions(): SeasonOptionsRequestBuilder;
    /**
     * The seasons property
     */
    get seasons(): SeasonsRequestBuilder;
    /**
     * The settings property
     */
    get settings(): SettingsRequestBuilder;
    /**
     * The shutdown property
     */
    get shutdown(): ShutdownRequestBuilder;
    /**
     * The standings property
     */
    get standings(): StandingsRequestBuilder;
    /**
     * The teams property
     */
    get teams(): TeamsRequestBuilder;
    /**
     * The tickets property
     */
    get tickets(): TicketsRequestBuilder;
    /**
     * Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueProfileResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueProfileResponse | undefined>;
    /**
     * Returns the public profile for a single league, resolved by slug or Convex ID. Requires the leagues.league_public:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithIdentifierItemRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithIdentifierItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithIdentifierItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithIdentifierItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map