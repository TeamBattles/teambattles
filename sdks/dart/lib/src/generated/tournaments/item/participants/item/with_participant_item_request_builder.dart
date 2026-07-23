// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './checkIn/check_in_request_builder.dart';
import './disqualify/disqualify_request_builder.dart';
import './remove/remove_request_builder.dart';
import './roster/roster_request_builder.dart';
import './withdraw/withdraw_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\participants\{participantId}
class WithParticipantItemRequestBuilder extends BaseRequestBuilder<WithParticipantItemRequestBuilder> {
    ///  The checkIn property
    CheckInRequestBuilder get checkIn {
        return CheckInRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The disqualify property
    DisqualifyRequestBuilder get disqualify {
        return DisqualifyRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The remove property
    RemoveRequestBuilder get remove {
        return RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The roster property
    RosterRequestBuilder get roster {
        return RosterRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The withdraw property
    WithdrawRequestBuilder get withdraw {
        return WithdrawRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithParticipantItemRequestBuilder clone() {
        return WithParticipantItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithParticipantItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithParticipantItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}", pathParameters) ;
    /// Instantiates a new [WithParticipantItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithParticipantItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
