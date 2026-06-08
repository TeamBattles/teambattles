// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/game_rank_delete_response.dart';

/// auto generated
/// Builds and executes requests for operations under \user\game-ranks\{gameId}\{mode}
class WithModeItemRequestBuilder extends BaseRequestBuilder<WithModeItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithModeItemRequestBuilder clone() {
        return WithModeItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithModeItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithModeItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/game-ranks/{gameId}/{mode}", pathParameters) ;
    /// Instantiates a new [WithModeItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithModeItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/game-ranks/{gameId}/{mode}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes the API key owner's rank for a single (gameId, mode) slot. No-op when no such rank exists. The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameRankDeleteResponse?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameRankDeleteResponse>(requestInfo, GameRankDeleteResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes the API key owner's rank for a single (gameId, mode) slot. No-op when no such rank exists. The user is always derived from the API key. Requires game.ranks:read-write and the writes feature (api_pro).
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
