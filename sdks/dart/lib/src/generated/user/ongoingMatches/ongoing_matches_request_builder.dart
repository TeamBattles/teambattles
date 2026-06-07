// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/ongoing_matches_response.dart';

/// auto generated
/// Builds and executes requests for operations under \user\ongoing-matches
class OngoingMatchesRequestBuilder extends BaseRequestBuilder<OngoingMatchesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    OngoingMatchesRequestBuilder clone() {
        return OngoingMatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OngoingMatchesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OngoingMatchesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/ongoing-matches", pathParameters) ;
    /// Instantiates a new [OngoingMatchesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OngoingMatchesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/ongoing-matches", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns published ACCEPTED, READY, and IN_PROGRESS matches for active teams the API key owner belongs to. The user is always derived from the API key. Requires matches.user_matches:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<OngoingMatchesResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<OngoingMatchesResponse>(requestInfo, OngoingMatchesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns published ACCEPTED, READY, and IN_PROGRESS matches for active teams the API key owner belongs to. The user is always derived from the API key. Requires matches.user_matches:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
