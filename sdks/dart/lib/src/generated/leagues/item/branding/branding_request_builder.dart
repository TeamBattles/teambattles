// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update/update_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\branding
class BrandingRequestBuilder extends BaseRequestBuilder<BrandingRequestBuilder> {
    ///  The update property
    UpdateRequestBuilder get update {
        return UpdateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    BrandingRequestBuilder clone() {
        return BrandingRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [BrandingRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BrandingRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/branding", pathParameters) ;
    /// Instantiates a new [BrandingRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BrandingRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/branding", {RequestInformation.rawUrlKey : rawUrl}) ;
}
