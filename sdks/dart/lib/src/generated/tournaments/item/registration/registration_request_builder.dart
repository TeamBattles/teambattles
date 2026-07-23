// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './close/close_request_builder.dart';
import './open/open_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\registration
class RegistrationRequestBuilder extends BaseRequestBuilder<RegistrationRequestBuilder> {
    ///  The close property
    CloseRequestBuilder get close {
        return CloseRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The open property
    OpenRequestBuilder get open {
        return OpenRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    RegistrationRequestBuilder clone() {
        return RegistrationRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RegistrationRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RegistrationRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration", pathParameters) ;
    /// Instantiates a new [RegistrationRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RegistrationRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/registration", {RequestInformation.rawUrlKey : rawUrl}) ;
}
