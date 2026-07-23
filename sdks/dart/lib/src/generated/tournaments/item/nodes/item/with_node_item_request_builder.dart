// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './overrideResult/override_result_request_builder.dart';
import './revertResult/revert_result_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\nodes\{nodeId}
class WithNodeItemRequestBuilder extends BaseRequestBuilder<WithNodeItemRequestBuilder> {
    ///  The overrideResult property
    OverrideResultRequestBuilder get overrideResult {
        return OverrideResultRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The revertResult property
    RevertResultRequestBuilder get revertResult {
        return RevertResultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithNodeItemRequestBuilder clone() {
        return WithNodeItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithNodeItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithNodeItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}", pathParameters) ;
    /// Instantiates a new [WithNodeItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithNodeItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
