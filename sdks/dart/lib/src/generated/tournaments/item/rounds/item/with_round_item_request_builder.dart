// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './schedule/schedule_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\rounds\{roundId}
class WithRoundItemRequestBuilder extends BaseRequestBuilder<WithRoundItemRequestBuilder> {
    ///  The schedule property
    ScheduleRequestBuilder get schedule {
        return ScheduleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithRoundItemRequestBuilder clone() {
        return WithRoundItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithRoundItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRoundItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/rounds/{roundId}", pathParameters) ;
    /// Instantiates a new [WithRoundItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRoundItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/rounds/{roundId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
