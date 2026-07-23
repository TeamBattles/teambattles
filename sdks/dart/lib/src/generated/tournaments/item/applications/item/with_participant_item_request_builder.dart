// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './approve/approve_request_builder.dart';
import './deny/deny_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\applications\{participantId}
class WithParticipantItemRequestBuilder extends BaseRequestBuilder<WithParticipantItemRequestBuilder> {
    ///  The approve property
    ApproveRequestBuilder get approve {
        return ApproveRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The deny property
    DenyRequestBuilder get deny {
        return DenyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithParticipantItemRequestBuilder clone() {
        return WithParticipantItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithParticipantItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithParticipantItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/applications/{participantId}", pathParameters) ;
    /// Instantiates a new [WithParticipantItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithParticipantItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/applications/{participantId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
