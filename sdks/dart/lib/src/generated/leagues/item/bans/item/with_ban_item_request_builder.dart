// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './revoke/revoke_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\bans\{banId}
class WithBanItemRequestBuilder extends BaseRequestBuilder<WithBanItemRequestBuilder> {
    ///  The revoke property
    RevokeRequestBuilder get revoke {
        return RevokeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithBanItemRequestBuilder clone() {
        return WithBanItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithBanItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithBanItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/bans/{banId}", pathParameters) ;
    /// Instantiates a new [WithBanItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithBanItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/bans/{banId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
