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
    /// Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
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
    /// Filtered read returning compact live status for a batch of users (POST is used only to carry the id list; no data is written). Send a body of 1 - 50 Convex user IDs; duplicates are ignored and over-50 is rejected. Each response row is { id, isLive, platforms } and does not include the primaryStream detail returned by GET /users/{identifier}/stream. Users that do not exist, are banned, or whose profile hides stream status from the caller are omitted from the response (the batch never reveals which case applied or that a hidden user exists), so count may be less than the number of IDs sent. Unlike the single-user stream endpoint, IDs are matched by user ID only; usernames are not resolved. No pagination and no guaranteed ordering. Requires stream.read.
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
