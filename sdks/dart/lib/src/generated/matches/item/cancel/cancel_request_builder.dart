// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/cancel_match_request_body.dart';
import '../../../models/cancel_match_response.dart';
import '../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\cancel
class CancelRequestBuilder extends BaseRequestBuilder<CancelRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CancelRequestBuilder clone() {
        return CancelRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CancelRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CancelRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/cancel", pathParameters) ;
    /// Instantiates a new [CancelRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CancelRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/cancel", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Cancels a match as the personal API key owner. The owner must be able to manage the match (captain a participating team or be an admin). Past the league grace period an accepted league match is treated as a forfeit. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Cancels the match as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CancelMatchResponse?> postAsync(CancelMatchRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<CancelMatchResponse>(requestInfo, CancelMatchResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Cancels a match as the personal API key owner. The owner must be able to manage the match (captain a participating team or be an admin). Past the league grace period an accepted league match is treated as a forfeit. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Cancels the match as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CancelMatchRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
