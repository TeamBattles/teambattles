// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update/update_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\points
class PointsRequestBuilder extends BaseRequestBuilder<PointsRequestBuilder> {
    ///  The update property
    UpdateRequestBuilder get update {
        return UpdateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    PointsRequestBuilder clone() {
        return PointsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PointsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PointsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/points", pathParameters) ;
    /// Instantiates a new [PointsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PointsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/points", {RequestInformation.rawUrlKey : rawUrl}) ;
}
