import { type ConnectionsRequestBuilder } from './connections/index.js';
import { type GameRanksRequestBuilder } from './gameRanks/index.js';
import { type MatchesRequestBuilder } from './matches/index.js';
import { type OngoingMatchesRequestBuilder } from './ongoingMatches/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /user
 */
export interface UserRequestBuilder extends BaseRequestBuilder<UserRequestBuilder> {
    /**
     * The connections property
     */
    get connections(): ConnectionsRequestBuilder;
    /**
     * The gameRanks property
     */
    get gameRanks(): GameRanksRequestBuilder;
    /**
     * The matches property
     */
    get matches(): MatchesRequestBuilder;
    /**
     * The ongoingMatches property
     */
    get ongoingMatches(): OngoingMatchesRequestBuilder;
}
/**
 * Uri template for the request builder.
 */
export declare const UserRequestBuilderUriTemplate = "{+baseurl}/user";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const UserRequestBuilderNavigationMetadata: Record<Exclude<keyof UserRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
//# sourceMappingURL=index.d.ts.map