// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/list_game_matches_body.dart';
import './item/with_match_item_request_builder.dart';
import './matches_post_response.dart';

/// auto generated
/// Builds and executes requests for operations under \game\matches
class MatchesRequestBuilder extends BaseRequestBuilder<MatchesRequestBuilder> {
    /// Gets an item from the teambattles.game.matches.item collection
    ///  [matchId] Match ID.
    WithMatchItemRequestBuilder byMatchId(String matchId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('matchId', () => matchId);
        return WithMatchItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    MatchesRequestBuilder clone() {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MatchesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MatchesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches", pathParameters) ;
    /// Instantiates a new [MatchesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MatchesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns matches for the given game, auto-filtered to the API key owner's approved game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
    ///  [body] Filters and cursor pagination for listing a game's matches.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<MatchesPostResponse?> postAsync(ListGameMatchesBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<MatchesPostResponse>(requestInfo, MatchesPostResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns matches for the given game, auto-filtered to the API key owner's approved game, with legacy cursor pagination. Requires the game.lifecycle:read permission.
    ///  [body] Filters and cursor pagination for listing a game's matches.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ListGameMatchesBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
