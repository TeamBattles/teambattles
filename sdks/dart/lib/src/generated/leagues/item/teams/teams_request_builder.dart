// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_league_team_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\teams
class TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /// Gets an item from the teambattles.leagues.item.teams.item collection
    ///  [leagueTeamId] League team application ID.
    WithLeagueTeamItemRequestBuilder byLeagueTeamId(String leagueTeamId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('leagueTeamId', () => leagueTeamId);
        return WithLeagueTeamItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    TeamsRequestBuilder clone() {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams", pathParameters) ;
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams", {RequestInformation.rawUrlKey : rawUrl}) ;
}
