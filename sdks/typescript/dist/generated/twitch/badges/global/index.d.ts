import { type TwitchGlobalBadges } from '../../../models/index.js';
import { type BaseRequestBuilder, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /twitch/badges/global
 */
export interface GlobalRequestBuilder extends BaseRequestBuilder<GlobalRequestBuilder> {
    /**
     * Returns Twitch's global chat badge sets. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<TwitchGlobalBadges>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     */
    get(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<TwitchGlobalBadges | undefined>;
    /**
     * Returns Twitch's global chat badge sets. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toGetRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const GlobalRequestBuilderUriTemplate = "{+baseurl}/twitch/badges/global";
/**
 * Metadata for all the requests in the request builder.
 */
export declare const GlobalRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map