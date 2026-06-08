// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './liveStatus/live_status_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \streams
class StreamsRequestBuilder extends BaseRequestBuilder<StreamsRequestBuilder> {
    ///  The liveStatus property
    LiveStatusRequestBuilder get liveStatus {
        return LiveStatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    StreamsRequestBuilder clone() {
        return StreamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StreamsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StreamsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/streams", pathParameters) ;
    /// Instantiates a new [StreamsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StreamsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/streams", {RequestInformation.rawUrlKey : rawUrl}) ;
}
