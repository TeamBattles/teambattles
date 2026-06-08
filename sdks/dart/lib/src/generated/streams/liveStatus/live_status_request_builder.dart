// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/api_batch_stream_status_body.dart';
import '../../models/api_batch_stream_status_envelope.dart';
import '../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \streams\live-status
class LiveStatusRequestBuilder extends BaseRequestBuilder<LiveStatusRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    LiveStatusRequestBuilder clone() {
        return LiveStatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LiveStatusRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LiveStatusRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/streams/live-status", pathParameters) ;
    /// Instantiates a new [LiveStatusRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LiveStatusRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/streams/live-status", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns compact live status for up to 50 users. Users that do not exist or whose profile hides stream status from the caller are omitted from the response. Requires stream.read.
    ///  [body] Batch live-status request body.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApiBatchStreamStatusEnvelope?> postAsync(ApiBatchStreamStatusBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApiBatchStreamStatusEnvelope>(requestInfo, ApiBatchStreamStatusEnvelope.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns compact live status for up to 50 users. Users that do not exist or whose profile hides stream status from the caller are omitted from the response. Requires stream.read.
    ///  [body] Batch live-status request body.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ApiBatchStreamStatusBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
