// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './imageUrl/image_url_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \uploads
class UploadsRequestBuilder extends BaseRequestBuilder<UploadsRequestBuilder> {
    ///  The imageUrl property
    ImageUrlRequestBuilder get imageUrl {
        return ImageUrlRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    UploadsRequestBuilder clone() {
        return UploadsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [UploadsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UploadsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/uploads", pathParameters) ;
    /// Instantiates a new [UploadsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UploadsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/uploads", {RequestInformation.rawUrlKey : rawUrl}) ;
}
