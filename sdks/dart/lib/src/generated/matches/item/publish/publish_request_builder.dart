// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/publish_match_response.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\publish
class PublishRequestBuilder extends BaseRequestBuilder<PublishRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    PublishRequestBuilder clone() {
        return PublishRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PublishRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PublishRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/publish", pathParameters) ;
    /// Instantiates a new [PublishRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PublishRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/publish", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Publishes a draft match as the personal API key owner, making it visible for acceptance. The owner must be the match creator or a captain of the creating team, and the match must still be a draft. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<PublishMatchResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<PublishMatchResponse>(requestInfo, PublishMatchResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Publishes a draft match as the personal API key owner, making it visible for acceptance. The owner must be the match creator or a captain of the creating team, and the match must still be a draft. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
