// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/game_forfeit_body.dart';
import '../../../../models/game_forfeit_response.dart';

/// auto generated
/// Builds and executes requests for operations under \game\matches\{matchId}\forfeit
class ForfeitRequestBuilder extends BaseRequestBuilder<ForfeitRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ForfeitRequestBuilder clone() {
        return ForfeitRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ForfeitRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ForfeitRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}/forfeit", pathParameters) ;
    /// Instantiates a new [ForfeitRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ForfeitRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}/forfeit", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Forfeits the match for the supplied team; the other participating team wins. Valid only while the match is ACCEPTED, READY, or IN_PROGRESS. Requires the game.lifecycle:read-write permission and a key bound to the match's game. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
    ///  [body] Request body for forfeiting a match on behalf of one participating team.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameForfeitResponse?> postAsync(GameForfeitBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameForfeitResponse>(requestInfo, GameForfeitResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Forfeits the match for the supplied team; the other participating team wins. Valid only while the match is ACCEPTED, READY, or IN_PROGRESS. Requires the game.lifecycle:read-write permission and a key bound to the match's game. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict.
    ///  [body] Request body for forfeiting a match on behalf of one participating team.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GameForfeitBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
