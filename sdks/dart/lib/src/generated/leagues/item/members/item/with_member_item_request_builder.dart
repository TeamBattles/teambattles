// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './remove/remove_request_builder.dart';
import './role/role_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\members\{memberId}
class WithMemberItemRequestBuilder extends BaseRequestBuilder<WithMemberItemRequestBuilder> {
    ///  The remove property
    RemoveRequestBuilder get remove {
        return RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The role property
    RoleRequestBuilder get role {
        return RoleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithMemberItemRequestBuilder clone() {
        return WithMemberItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithMemberItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMemberItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/members/{memberId}", pathParameters) ;
    /// Instantiates a new [WithMemberItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMemberItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/members/{memberId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
