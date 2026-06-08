// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './report/report_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \chat\messages\{messageId}
class WithMessageItemRequestBuilder extends BaseRequestBuilder<WithMessageItemRequestBuilder> {
    ///  The report property
    ReportRequestBuilder get report {
        return ReportRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithMessageItemRequestBuilder clone() {
        return WithMessageItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithMessageItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMessageItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chat/messages/{messageId}", pathParameters) ;
    /// Instantiates a new [WithMessageItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMessageItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/chat/messages/{messageId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
