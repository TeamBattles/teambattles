// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/update_league_member_role_request_body.dart';
import '../../../../../models/update_league_member_role_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\members\{memberId}\role
class RoleRequestBuilder extends BaseRequestBuilder<RoleRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RoleRequestBuilder clone() {
        return RoleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RoleRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RoleRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/members/{memberId}/role", pathParameters) ;
    /// Instantiates a new [RoleRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RoleRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/members/{memberId}/role", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Updates a league staff member role. Requires a league-operator key bound to the league and the league members capability.
    ///  [body] Updates a league staff member role.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<UpdateLeagueMemberRoleResponse?> postAsync(UpdateLeagueMemberRoleRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<UpdateLeagueMemberRoleResponse>(requestInfo, UpdateLeagueMemberRoleResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Updates a league staff member role. Requires a league-operator key bound to the league and the league members capability.
    ///  [body] Updates a league staff member role.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(UpdateLeagueMemberRoleRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
