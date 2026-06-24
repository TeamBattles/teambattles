// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/refuse_challenge_request_body.dart';
import '../../../../models/refuse_challenge_response.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\challenges\refuse
class RefuseRequestBuilder extends BaseRequestBuilder<RefuseRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RefuseRequestBuilder clone() {
        return RefuseRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RefuseRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RefuseRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/challenges/refuse", pathParameters) ;
    /// Instantiates a new [RefuseRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RefuseRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/challenges/refuse", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Refuses a pending challenge as the personal API key owner. The owner must captain the challenged team. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Refuses a pending challenge as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<RefuseChallengeResponse?> postAsync(RefuseChallengeRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<RefuseChallengeResponse>(requestInfo, RefuseChallengeResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Refuses a pending challenge as the personal API key owner. The owner must captain the challenged team. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Refuses a pending challenge as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(RefuseChallengeRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
