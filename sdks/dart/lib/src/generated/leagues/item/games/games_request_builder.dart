// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_games.dart';
import './add/add_request_builder.dart';
import './item/with_league_game_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\games
class GamesRequestBuilder extends BaseRequestBuilder<GamesRequestBuilder> {
    ///  The add property
    AddRequestBuilder get add {
        return AddRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.leagues.item.games.item collection
    ///  [leagueGameId] League game link ID.
    WithLeagueGameItemRequestBuilder byLeagueGameId(String leagueGameId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('leagueGameId', () => leagueGameId);
        return WithLeagueGameItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GamesRequestBuilder clone() {
        return GamesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GamesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GamesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/games", pathParameters) ;
    /// Instantiates a new [GamesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GamesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/games", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns games configured for a league resolved by slug or Convex ID. Requires leagues.league_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueGames?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueGames>(requestInfo, LeagueGames.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns games configured for a league resolved by slug or Convex ID. Requires leagues.league_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
