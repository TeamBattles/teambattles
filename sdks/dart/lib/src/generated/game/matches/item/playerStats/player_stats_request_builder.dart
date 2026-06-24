// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/game_player_stats_body.dart';
import '../../../../models/game_player_stats_response.dart';

/// auto generated
/// Builds and executes requests for operations under \game\matches\{matchId}\player-stats
class PlayerStatsRequestBuilder extends BaseRequestBuilder<PlayerStatsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    PlayerStatsRequestBuilder clone() {
        return PlayerStatsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PlayerStatsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PlayerStatsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}/player-stats", pathParameters) ;
    /// Instantiates a new [PlayerStatsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PlayerStatsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}/player-stats", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Sets per-player stats on an existing map score for the given mapIndex. Requires the game.scores:write permission. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match.
    ///  [body] Request body for submitting or updating player stats for an existing map score.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GamePlayerStatsResponse?> postAsync(GamePlayerStatsBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GamePlayerStatsResponse>(requestInfo, GamePlayerStatsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Sets per-player stats on an existing map score for the given mapIndex. Requires the game.scores:write permission. Supports an optional `Idempotency-Key` request header: a retry with the same key and body replays the original response, while the same key with a different body returns 409 error_idempotency_key_conflict. The idempotency identity is scoped per match.
    ///  [body] Request body for submitting or updating player stats for an existing map score.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GamePlayerStatsBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
