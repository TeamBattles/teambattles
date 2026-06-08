// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './transfer/transfer_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\ownership
class OwnershipRequestBuilder extends BaseRequestBuilder<OwnershipRequestBuilder> {
    ///  The transfer property
    TransferRequestBuilder get transfer {
        return TransferRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    OwnershipRequestBuilder clone() {
        return OwnershipRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OwnershipRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OwnershipRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/ownership", pathParameters) ;
    /// Instantiates a new [OwnershipRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OwnershipRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/ownership", {RequestInformation.rawUrlKey : rawUrl}) ;
}
