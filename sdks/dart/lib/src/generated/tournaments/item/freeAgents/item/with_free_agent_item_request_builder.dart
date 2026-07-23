// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './offers/offers_request_builder.dart';
import './remove/remove_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agents\{freeAgentId}
class WithFreeAgentItemRequestBuilder extends BaseRequestBuilder<WithFreeAgentItemRequestBuilder> {
    ///  The offers property
    OffersRequestBuilder get offers {
        return OffersRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The remove property
    RemoveRequestBuilder get remove {
        return RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithFreeAgentItemRequestBuilder clone() {
        return WithFreeAgentItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithFreeAgentItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithFreeAgentItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}", pathParameters) ;
    /// Instantiates a new [WithFreeAgentItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithFreeAgentItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
