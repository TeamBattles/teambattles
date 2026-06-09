import { type LeagueMembers } from '../../../models/index.js';
import { type AddRequestBuilder } from './add/index.js';
import { type WithMemberItemRequestBuilder } from './item/index.js';
import { type BaseRequestBuilder, type KeysToExcludeForNavigationMetadata, type NavigationMetadata, type RequestConfiguration, type RequestInformation, type RequestsMetadata } from '@microsoft/kiota-abstractions';
/**
 * Builds and executes requests for operations under /leagues/{identifier}/members
 */
export interface MembersRequestBuilder extends BaseRequestBuilder<MembersRequestBuilder> {
    /**
     * The add property
     */
    get add(): AddRequestBuilder;
    /**
     * Gets an item from the teambattles.leagues.item.members.item collection
     * @param memberId League staff membership ID.
     * @returns {WithMemberItemRequestBuilder}
     */
    byMemberId(memberId: string): WithMemberItemRequestBuilder;
    /**
     * Returns staff members for a league resolved by slug. The API key owner must have a MEMBER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {Promise<LeagueMembers>}
     * @throws {ErrorEscaped} error when the service returns a 401 status code
     * @throws {ErrorEscaped} error when the service returns a 403 status code
     * @throws {ErrorEscaped} error when the service returns a 404 status code
     */
    post(requestConfiguration?: RequestConfiguration<object> | undefined): Promise<LeagueMembers | undefined>;
    /**
     * Returns staff members for a league resolved by slug. The API key owner must have a MEMBER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
     * @param requestConfiguration Configuration for the request such as headers, query parameters, and middleware options.
     * @returns {RequestInformation}
     */
    toPostRequestInformation(requestConfiguration?: RequestConfiguration<object> | undefined): RequestInformation;
}
/**
 * Uri template for the request builder.
 */
export declare const MembersRequestBuilderUriTemplate = "{+baseurl}/leagues/{identifier}/members";
/**
 * Metadata for all the navigation properties in the request builder.
 */
export declare const MembersRequestBuilderNavigationMetadata: Record<Exclude<keyof MembersRequestBuilder, KeysToExcludeForNavigationMetadata>, NavigationMetadata>;
/**
 * Metadata for all the requests in the request builder.
 */
export declare const MembersRequestBuilderRequestsMetadata: RequestsMetadata;
//# sourceMappingURL=index.d.ts.map