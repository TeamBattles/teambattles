import { type TwitchChannelBadges } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /twitch/badges/channel
 */
export interface ChannelRequestBuilder extends BaseRequestBuilder<ChannelRequestBuilder> {
    /**
     * Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<TwitchChannelBadges>}
     * @throws {ErrorEscaped} error when the service returns a 400 status code
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    get(requestConfiguration?: RequestConfiguration<ChannelRequestBuilderGetQueryParameters> | undefined): Promise<TwitchChannelBadges | undefined>;
    /**
     * Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<ChannelRequestBuilderGetQueryParameters> | undefined): RequestInformation;
}
/**
 * Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
 */
export interface ChannelRequestBuilderGetQueryParameters {
    /**
     * Broadcaster id (e.g. 123456789). Provide exactly one of username or id.
     */
    id?: string;
    /**
     * Channel login name (e.g. ninja). Provide exactly one of username or id.
     */
    username?: string;
}
/**
 * Uri template for the request builder.
 */
export declare const ChannelRequestBuilderUriTemplate = "{+baseurl}/twitch/badges/channel{?id*,username*}";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const ChannelRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map