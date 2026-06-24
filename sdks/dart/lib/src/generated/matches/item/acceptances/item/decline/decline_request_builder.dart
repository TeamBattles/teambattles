// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/decline_acceptance_request_body.dart';
import '../../../../../models/decline_acceptance_response.dart';
import '../../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\acceptances\{acceptanceId}\decline
class DeclineRequestBuilder extends BaseRequestBuilder<DeclineRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DeclineRequestBuilder clone() {
        return DeclineRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DeclineRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeclineRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}/decline", pathParameters) ;
    /// Instantiates a new [DeclineRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DeclineRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/acceptances/{acceptanceId}/decline", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Declines a pending match acceptance as the personal API key owner. The owner must captain the creator team, and the acceptance must still be pending. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Declines a pending match acceptance as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DeclineAcceptanceResponse?> postAsync(DeclineAcceptanceRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<DeclineAcceptanceResponse>(requestInfo, DeclineAcceptanceResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Declines a pending match acceptance as the personal API key owner. The owner must captain the creator team, and the acceptance must still be pending. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Declines a pending match acceptance as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(DeclineAcceptanceRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
