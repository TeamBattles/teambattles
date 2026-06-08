// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './request/request_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\shutdown
class ShutdownRequestBuilder extends BaseRequestBuilder<ShutdownRequestBuilder> {
    ///  The request property
    RequestRequestBuilder get request {
        return RequestRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ShutdownRequestBuilder clone() {
        return ShutdownRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ShutdownRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ShutdownRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/shutdown", pathParameters) ;
    /// Instantiates a new [ShutdownRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ShutdownRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/shutdown", {RequestInformation.rawUrlKey : rawUrl}) ;
}
