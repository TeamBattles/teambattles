// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/accept_match_request_body.dart';
import '../../../models/accept_match_response.dart';
import '../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\accept
class AcceptRequestBuilder extends BaseRequestBuilder<AcceptRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    AcceptRequestBuilder clone() {
        return AcceptRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AcceptRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AcceptRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/accept", pathParameters) ;
    /// Instantiates a new [AcceptRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AcceptRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/accept", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Creates a match acceptance request as the personal API key owner. The owner must captain the accepting team and the proposed roster must satisfy existing match rules. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Creates a match acceptance request as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<AcceptMatchResponse?> postAsync(AcceptMatchRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<AcceptMatchResponse>(requestInfo, AcceptMatchResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates a match acceptance request as the personal API key owner. The owner must captain the accepting team and the proposed roster must satisfy existing match rules. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Creates a match acceptance request as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AcceptMatchRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
