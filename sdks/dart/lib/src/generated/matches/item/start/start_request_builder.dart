// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/start_match_response.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\start
class StartRequestBuilder extends BaseRequestBuilder<StartRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    StartRequestBuilder clone() {
        return StartRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StartRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StartRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/start", pathParameters) ;
    /// Instantiates a new [StartRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StartRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/start", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Starts a ready match as the personal API key owner, moving it to in-progress. The owner must be a captain of the creating or accepted team, and the match must be in the ready state. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<StartMatchResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<StartMatchResponse>(requestInfo, StartMatchResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Starts a ready match as the personal API key owner, moving it to in-progress. The owner must be a captain of the creating or accepted team, and the match must be in the ready state. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
