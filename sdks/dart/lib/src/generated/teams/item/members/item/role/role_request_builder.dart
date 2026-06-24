// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/set_team_member_role_body.dart';
import '../../../../../models/set_team_member_role_response.dart';

/// auto generated
/// Builds and executes requests for operations under \teams\{identifier}\members\{userId}\role
class RoleRequestBuilder extends BaseRequestBuilder<RoleRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RoleRequestBuilder clone() {
        return RoleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RoleRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RoleRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams/{identifier}/members/{userId}/role", pathParameters) ;
    /// Instantiates a new [RoleRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RoleRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams/{identifier}/members/{userId}/role", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Sets a team member's role to CO_CAPTAIN or MEMBER. The caller (key owner) must be the team captain or co-captain. The captain role cannot be assigned or removed this way - use captaincy transfer instead. Requires teams.roster:read-write.
    ///  [body] Set a team member's role.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<SetTeamMemberRoleResponse?> patchAsync(SetTeamMemberRoleBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<SetTeamMemberRoleResponse>(requestInfo, SetTeamMemberRoleResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Sets a team member's role to CO_CAPTAIN or MEMBER. The caller (key owner) must be the team captain or co-captain. The captain role cannot be assigned or removed this way - use captaincy transfer instead. Requires teams.roster:read-write.
    ///  [body] Set a team member's role.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPatchRequestInformation(SetTeamMemberRoleBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.patch, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
