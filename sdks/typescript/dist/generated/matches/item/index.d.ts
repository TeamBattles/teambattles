import { type ApiMatchDetailResponse } from '../../models/index.js';
import { type AcceptRequestBuilder } from './accept/index.js';
import { type AttendanceRequestBuilder } from './attendance/index.js';
import { type CancelRequestBuilder } from './cancel/index.js';
import { type ChatRequestBuilder } from './chat/index.js';
import { type ForfeitRequestBuilder } from './forfeit/index.js';
import { type LobbyCodeRequestBuilder } from './lobbyCode/index.js';
import { type PlayersRequestBuilder } from './players/index.js';
import { type ReadyRequestBuilder } from './ready/index.js';
import { type ScoresRequestBuilder } from './scores/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /matches/{matchId}
 */
export interface WithMatchItemRequestBuilder extends BaseRequestBuilder<WithMatchItemRequestBuilder> {
    /**
     * The accept property
     */
    get accept(): AcceptRequestBuilder;
    /**
     * The attendance property
     */
    get attendance(): AttendanceRequestBuilder;
    /**
     * The cancel property
     */
    get cancel(): CancelRequestBuilder;
    /**
     * The chat property
     */
    get chat(): ChatRequestBuilder;
    /**
     * The forfeit property
     */
    get forfeit(): ForfeitRequestBuilder;
    /**
     * The lobbyCode property
     */
    get lobbyCode(): LobbyCodeRequestBuilder;
    /**
     * The players property
     */
    get players(): PlayersRequestBuilder;
    /**
     * The ready property
     */
    get ready(): ReadyRequestBuilder;
    /**
     * The scores property
     */
    get scores(): ScoresRequestBuilder;
    /**
     * Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApiMatchDetailResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApiMatchDetailResponse | undefined>;
    /**
     * Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const WithMatchItemRequestBuilderUriTemplate = "{+baseurl}/matches/{matchId}";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const WithMatchItemRequestBuilderNavigationMetadata: Record<Exclude<keyof WithMatchItemRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const WithMatchItemRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map