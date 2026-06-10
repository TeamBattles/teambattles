// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/api_stream_status_envelope.dart';
import '../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \users\{identifier}\stream
class StreamRequestBuilder extends BaseRequestBuilder<StreamRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    StreamRequestBuilder clone() {
        return StreamRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StreamRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StreamRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/stream", pathParameters) ;
    /// Instantiates a new [StreamRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StreamRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/users/{identifier}/stream", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns whether a user is live, the platforms they are live on, and their primary (highest-viewer) stream details. The {identifier} may be a username or a Convex user ID. Visible for public or limited profiles, plus self; a private non-self profile returns 403. Unknown or currently-banned users return 404 (a banned user's existence is not leaked). When offline, isLive is false, platforms is empty, and primaryStream is null. Requires stream.read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApiStreamStatusEnvelope?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApiStreamStatusEnvelope>(requestInfo, ApiStreamStatusEnvelope.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns whether a user is live, the platforms they are live on, and their primary (highest-viewer) stream details. The {identifier} may be a username or a Convex user ID. Visible for public or limited profiles, plus self; a private non-self profile returns 403. Unknown or currently-banned users return 404 (a banned user's existence is not leaked). When offline, isLive is false, platforms is empty, and primaryStream is null. Requires stream.read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
