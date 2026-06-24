// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/remove_org_member_response.dart';
import './role/role_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs\{identifier}\members\{userId}
class WithUserItemRequestBuilder extends BaseRequestBuilder<WithUserItemRequestBuilder> {
    ///  The role property
    RoleRequestBuilder get role {
        return RoleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithUserItemRequestBuilder clone() {
        return WithUserItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithUserItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithUserItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/members/{userId}", pathParameters) ;
    /// Instantiates a new [WithUserItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithUserItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/members/{userId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes a member from an organization. The caller (key owner) must be an organization admin. The organization owner cannot be removed this way - transfer ownership first. Requires orgs.roster:read-write.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<RemoveOrgMemberResponse?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<RemoveOrgMemberResponse>(requestInfo, RemoveOrgMemberResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes a member from an organization. The caller (key owner) must be an organization admin. The organization owner cannot be removed this way - transfer ownership first. Requires orgs.roster:read-write.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
