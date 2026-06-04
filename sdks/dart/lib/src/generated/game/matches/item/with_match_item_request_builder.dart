// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/game_match_detail_response.dart';
import './playerStats/player_stats_request_builder.dart';
import './rosters/rosters_request_builder.dart';
import './scores/scores_request_builder.dart';
import './status/status_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \game\matches\{matchId}
class WithMatchItemRequestBuilder extends BaseRequestBuilder<WithMatchItemRequestBuilder> {
    ///  The playerStats property
    PlayerStatsRequestBuilder get playerStats {
        return PlayerStatsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The rosters property
    RostersRequestBuilder get rosters {
        return RostersRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The scores property
    ScoresRequestBuilder get scores {
        return ScoresRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The status property
    StatusRequestBuilder get status {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithMatchItemRequestBuilder clone() {
        return WithMatchItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithMatchItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMatchItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}", pathParameters) ;
    /// Instantiates a new [WithMatchItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMatchItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameMatchDetailResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameMatchDetailResponse>(requestInfo, GameMatchDetailResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns detailed info for one match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
