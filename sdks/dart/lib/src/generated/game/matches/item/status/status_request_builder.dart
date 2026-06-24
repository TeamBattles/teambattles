// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/game_status_update_body.dart';
import '../../../../models/game_status_update_response.dart';

/// auto generated
/// Builds and executes requests for operations under \game\matches\{matchId}\status
class StatusRequestBuilder extends BaseRequestBuilder<StatusRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    StatusRequestBuilder clone() {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StatusRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StatusRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}/status", pathParameters) ;
    /// Instantiates a new [StatusRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StatusRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}/status", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission. Supports an optional `Idempotency-Key` request header that deduplicates concurrent duplicate submissions: while one request is in flight, a second request with the same key and body resolves to the same outcome, and the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match and per target status. Note that this endpoint validates the live match state first, so a sequential retry sent after the transition has already succeeded returns the normal transition error (error_match_not_in_valid_state) - the live state no longer permits the transition - rather than a replayed success.
    ///  [body] Request body for updating a match's lifecycle status.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameStatusUpdateResponse?> patchAsync(GameStatusUpdateBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPatchRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameStatusUpdateResponse>(requestInfo, GameStatusUpdateResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Transitions a match between lifecycle states (validated against allowed transitions). Requires the game.lifecycle:read-write permission. Supports an optional `Idempotency-Key` request header that deduplicates concurrent duplicate submissions: while one request is in flight, a second request with the same key and body resolves to the same outcome, and the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match and per target status. Note that this endpoint validates the live match state first, so a sequential retry sent after the transition has already succeeded returns the normal transition error (error_match_not_in_valid_state) - the live state no longer permits the transition - rather than a replayed success.
    ///  [body] Request body for updating a match's lifecycle status.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPatchRequestInformation(GameStatusUpdateBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.patch, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
