// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/create_season_request_body.dart';
import '../../../../models/create_season_response.dart';
import '../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\seasons\create
class CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CreateRequestBuilder clone() {
        return CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CreateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons/create", pathParameters) ;
    /// Instantiates a new [CreateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons/create", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Creates an upcoming season for a league game. Requires the league seasons capability. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original season id, while the same key with a different body returns 409 error_idempotency_key_conflict.
    ///  [body] League season creation payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<CreateSeasonResponse?> postAsync(CreateSeasonRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<CreateSeasonResponse>(requestInfo, CreateSeasonResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates an upcoming season for a league game. Requires the league seasons capability. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original season id, while the same key with a different body returns 409 error_idempotency_key_conflict.
    ///  [body] League season creation payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(CreateSeasonRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
