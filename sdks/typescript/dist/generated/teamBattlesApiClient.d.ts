import { type ChatRequestBuilder } from './chat/index.js';
import { type GameRequestBuilder } from './game/index.js';
import { type GamesRequestBuilder } from './games/index.js';
import { type LeaderboardsRequestBuilder } from './leaderboards/index.js';
import { type LeaguesRequestBuilder } from './leagues/index.js';
import { type MatchesRequestBuilder } from './matches/index.js';
import { type OrgsRequestBuilder } from './orgs/index.js';
import { type StrategiesRequestBuilder } from './strategies/index.js';
import { type StreamsRequestBuilder } from './streams/index.js';
import { type TeamsRequestBuilder } from './teams/index.js';
import { type TicketsRequestBuilder } from './tickets/index.js';
import { type TwitchRequestBuilder } from './twitch/index.js';
import { type UploadsRequestBuilder } from './uploads/index.js';
import { type UserRequestBuilder } from './user/index.js';
import { type UsersRequestBuilder } from './users/index.js';
import { type WebhooksRequestBuilder } from './webhooks/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestAdapter } from '@microsoft/kiota-abstractions';
/**
 * Instantiates a new {@link TeamBattlesApiClient} and sets the default values.
 * @param requestAdapter The request adapter to use to execute the requests.
 */
export declare function createTeamBattlesApiClient(requestAdapter: RequestAdapter): TeamBattlesApiClient;
/**
 * The main entry point of the SDK, exposes the configuration and the fluent API.
 */
export interface TeamBattlesApiClient extends BaseRequestBuilder<TeamBattlesApiClient> {
    /**
     * The chat property
     */
    get chat(): ChatRequestBuilder;
    /**
     * The game property
     */
    get game(): GameRequestBuilder;
    /**
     * The games property
     */
    get games(): GamesRequestBuilder;
    /**
     * The leaderboards property
     */
    get leaderboards(): LeaderboardsRequestBuilder;
    /**
     * The leagues property
     */
    get leagues(): LeaguesRequestBuilder;
    /**
     * The matches property
     */
    get matches(): MatchesRequestBuilder;
    /**
     * The orgs property
     */
    get orgs(): OrgsRequestBuilder;
    /**
     * The strategies property
     */
    get strategies(): StrategiesRequestBuilder;
    /**
     * The streams property
     */
    get streams(): StreamsRequestBuilder;
    /**
     * The teams property
     */
    get teams(): TeamsRequestBuilder;
    /**
     * The tickets property
     */
    get tickets(): TicketsRequestBuilder;
    /**
     * The twitch property
     */
    get twitch(): TwitchRequestBuilder;
    /**
     * The uploads property
     */
    get uploads(): UploadsRequestBuilder;
    /**
     * The user property
     */
    get user(): UserRequestBuilder;
    /**
     * The users property
     */
    get users(): UsersRequestBuilder;
    /**
     * The webhooks property
     */
    get webhooks(): WebhooksRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const TeamBattlesApiClientUriTemplate = "{+baseurl}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const TeamBattlesApiClientNavigationMetadata: Record<Exclude<keyof TeamBattlesApiClient, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=teamBattlesApiClient.d.ts.map