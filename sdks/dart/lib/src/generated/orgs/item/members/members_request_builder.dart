// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/add_org_member_body.dart';
import '../../../models/add_org_member_response.dart';
import '../../../models/error.dart';
import './item/with_user_item_request_builder.dart';
import './members_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs\{identifier}\members
class MembersRequestBuilder extends BaseRequestBuilder<MembersRequestBuilder> {
    /// Gets an item from the teambattles.orgs.item.members.item collection
    ///  [userId] Convex user ID of the member to remove.
    WithUserItemRequestBuilder byUserId(String userId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('userId', () => userId);
        return WithUserItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    MembersRequestBuilder clone() {
        return MembersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MembersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MembersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/members", pathParameters) ;
    /// Instantiates a new [MembersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MembersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/members", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns every active member of the organization in a single response. This list is not paginated and accepts no limit or cursor parameter. Members are sorted by role (owner first, then admin, manager, and member; unrecognized roles tie with member). Each row's `id` is the membership row ID, not the user ID, and the row carries the member's API-safe user profile, role label, and join timestamp. Visible only when the organization profile is public, or when the API key owner is an active member of the organization; otherwise this returns 403. A non-existent or inactive organization returns 404. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<MembersGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<MembersGetResponse>(requestInfo, MembersGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Adds a user to the organization with the ADMIN or MEMBER role. The caller (key owner) must be an organization admin or owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.roster:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Add a member to the organization.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AddOrgMemberResponse?> postAsync(AddOrgMemberBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<AddOrgMemberResponse>(requestInfo, AddOrgMemberResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns every active member of the organization in a single response. This list is not paginated and accepts no limit or cursor parameter. Members are sorted by role (owner first, then admin, manager, and member; unrecognized roles tie with member). Each row's `id` is the membership row ID, not the user ID, and the row carries the member's API-safe user profile, role label, and join timestamp. Visible only when the organization profile is public, or when the API key owner is an active member of the organization; otherwise this returns 403. A non-existent or inactive organization returns 404. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Adds a user to the organization with the ADMIN or MEMBER role. The caller (key owner) must be an organization admin or owner. Role ceilings and cascades are enforced exactly as in the web app. Requires orgs.roster:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Add a member to the organization.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AddOrgMemberBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
