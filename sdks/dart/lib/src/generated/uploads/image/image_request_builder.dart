// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/bound_image_upload_response.dart';
import '../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \uploads\image
class ImageRequestBuilder extends BaseRequestBuilder<ImageRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ImageRequestBuilder clone() {
        return ImageRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ImageRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImageRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/uploads/image", pathParameters) ;
    /// Instantiates a new [ImageRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ImageRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/uploads/image", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Uploads image BYTES (multipart/form-data: `file`, `slot` = avatar|banner, optional `targetKind` + `targetId`) and returns a storageId already bound to the API key owner, plus its public URL. Branding writes such as PATCH /leagues/{leagueId}/branding only accept storage ids minted here - a raw id from /uploads/image-url is refused with error_image_blob_unbound. Avatars are capped at 1 MB and banners at 2 MB; SVG is rejected and the stored image is NSFW-scanned. Requires uploads.upload:read-write and the writes feature (api_pro).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<BoundImageUploadResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<BoundImageUploadResponse>(requestInfo, BoundImageUploadResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Uploads image BYTES (multipart/form-data: `file`, `slot` = avatar|banner, optional `targetKind` + `targetId`) and returns a storageId already bound to the API key owner, plus its public URL. Branding writes such as PATCH /leagues/{leagueId}/branding only accept storage ids minted here - a raw id from /uploads/image-url is refused with error_image_blob_unbound. Avatars are capped at 1 MB and banners at 2 MB; SVG is rejected and the stored image is NSFW-scanned. Requires uploads.upload:read-write and the writes feature (api_pro).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
