import { type ApiGamePlaylistsResponse } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /games/{id}/playlists
 */
export interface PlaylistsRequestBuilder extends BaseRequestBuilder<PlaylistsRequestBuilder> {
    /**
     * Returns playlists from the static public game definition for the requested game ID. Playlist IDs are game-scoped, so shared slugs such as standard are not resolved globally.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<ApiGamePlaylistsResponse>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     * @throws {ErrorEscaped} error when the service returns a 429 status code
     * @throws {ErrorEscaped} error when the service returns a 500 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<ApiGamePlaylistsResponse | undefined>;
    /**
     * Returns playlists from the static public game definition for the requested game ID. Playlist IDs are game-scoped, so shared slugs such as standard are not resolved globally.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const PlaylistsRequestBuilderUriTemplate = "{+baseurl}/games/{id}/playlists";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const PlaylistsRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map