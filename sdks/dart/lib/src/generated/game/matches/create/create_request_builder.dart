// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/game_create_match_body.dart';
import '../../../models/game_create_match_response.dart';

/// auto generated
/// Builds and executes requests for operations under \game\matches\create
class CreateRequestBuilder extends BaseRequestBuilder<CreateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CreateRequestBuilder clone() {
        return CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CreateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/create", pathParameters) ;
    /// Instantiates a new [CreateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CreateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/create", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Creates an ACCEPTED + PUBLISHED match for the API key's bound game between two active teams in that game. Requires the game.lifecycle:read-write permission. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key + body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
    ///  [body] Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameCreateMatchResponse?> postAsync(GameCreateMatchBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameCreateMatchResponse>(requestInfo, GameCreateMatchResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates an ACCEPTED + PUBLISHED match for the API key's bound game between two active teams in that game. Requires the game.lifecycle:read-write permission. Supply an optional `Idempotency-Key` request header to make retries safe: an identical key + body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
    ///  [body] Request body for creating a two-sided game-originated match. The match is created ACCEPTED + PUBLISHED for the key's bound game. Supports an optional Idempotency-Key header for safe retries.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GameCreateMatchBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
