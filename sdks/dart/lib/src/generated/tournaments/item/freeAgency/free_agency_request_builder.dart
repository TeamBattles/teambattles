// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './me/me_request_builder.dart';
import './offers/offers_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agency
class FreeAgencyRequestBuilder extends BaseRequestBuilder<FreeAgencyRequestBuilder> {
    ///  The me property
    MeRequestBuilder get me {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The offers property
    OffersRequestBuilder get offers {
        return OffersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    FreeAgencyRequestBuilder clone() {
        return FreeAgencyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [FreeAgencyRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    FreeAgencyRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency", pathParameters) ;
    /// Instantiates a new [FreeAgencyRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    FreeAgencyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency", {RequestInformation.rawUrlKey : rawUrl}) ;
}
