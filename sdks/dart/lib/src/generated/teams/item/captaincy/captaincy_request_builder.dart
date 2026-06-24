// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfer/transfer_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \teams\{identifier}\captaincy
class CaptaincyRequestBuilder extends BaseRequestBuilder<CaptaincyRequestBuilder> {
    ///  The transfer property
    TransferRequestBuilder get transfer {
        return TransferRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    CaptaincyRequestBuilder clone() {
        return CaptaincyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CaptaincyRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CaptaincyRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams/{identifier}/captaincy", pathParameters) ;
    /// Instantiates a new [CaptaincyRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CaptaincyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/teams/{identifier}/captaincy", {RequestInformation.rawUrlKey : rawUrl}) ;
}
