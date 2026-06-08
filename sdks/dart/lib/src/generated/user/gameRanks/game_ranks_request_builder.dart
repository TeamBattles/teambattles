// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/game_rank_list_response.dart';
import '../../models/game_rank_upsert_body.dart';
import '../../models/game_rank_upsert_response.dart';
import './item/with_game_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \user\game-ranks
class GameRanksRequestBuilder extends BaseRequestBuilder<GameRanksRequestBuilder> {
    /// Gets an item from the teambattles.user.gameRanks.item collection
    ///  [gameId] Game definition ID of the rank to delete.
    WithGameItemRequestBuilder byGameId(String gameId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('gameId', () => gameId);
        return WithGameItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GameRanksRequestBuilder clone() {
        return GameRanksRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GameRanksRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GameRanksRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/game-ranks", pathParameters) ;
    /// Instantiates a new [GameRanksRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GameRanksRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/game-ranks", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameRankListResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameRankListResponse>(requestInfo, GameRankListResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates or overwrites the API key owner's rank for a single (gameId, mode) slot, forcing source to "api". The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
    ///  [body] Upsert the API key owner's rank for one (gameId, mode) slot.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameRankUpsertResponse?> postAsync(GameRankUpsertBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameRankUpsertResponse>(requestInfo, GameRankUpsertResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns every game rank for the API key owner. The user is always derived from the API key. Requires game.ranks:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Creates or overwrites the API key owner's rank for a single (gameId, mode) slot, forcing source to "api". The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
    ///  [body] Upsert the API key owner's rank for one (gameId, mode) slot.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(GameRankUpsertBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
