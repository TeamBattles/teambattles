// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './approve/approve_request_builder.dart';
import './decline/decline_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\acceptances\{acceptanceId}
class WithAcceptanceItemRequestBuilder extends BaseRequestBuilder<WithAcceptanceItemRequestBuilder> {
    ///  The approve property
    ApproveRequestBuilder get approve {
        return ApproveRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The decline property
    DeclineRequestBuilder get decline {
        return DeclineRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithAcceptanceItemRequestBuilder clone() {
        return WithAcceptanceItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithAcceptanceItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAcceptanceItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}", pathParameters) ;
    /// Instantiates a new [WithAcceptanceItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithAcceptanceItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
