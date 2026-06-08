// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/image_upload_url_response.dart';

/// auto generated
/// Builds and executes requests for operations under \uploads\image-url
class ImageUrlRequestBuilder extends BaseRequestBuilder<ImageUrlRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ImageUrlRequestBuilder clone() {
        return ImageUrlRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ImageUrlRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImageUrlRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/uploads/image-url", pathParameters) ;
    /// Instantiates a new [ImageUrlRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImageUrlRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/uploads/image-url", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ImageUploadUrlResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ImageUploadUrlResponse>(requestInfo, ImageUploadUrlResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a short-lived, single-use Convex storage upload URL for the API key owner. POST the image bytes to the returned URL to receive a storageId, then supply that storageId on a downstream write (e.g. a score-ingest screenshotStorageIds). The owner is always derived from the API key. Requires uploads.upload:read-write and the writes feature (api_pro).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
