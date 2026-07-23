// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_team_identifier_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\teams
class TeamsRequestBuilder extends BaseRequestBuilder<TeamsRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.teams.item collection
    ///  [teamIdentifier] Slug of the team to act as. You must be its captain, co-captain, or the owner of the organization that owns it. A team you do not lead and a slug that does not resolve BOTH answer 403 error_not_team_leader, so that this path is not a team-slug enumeration oracle.
    WithTeamIdentifierItemRequestBuilder byTeamIdentifier(String teamIdentifier) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('teamIdentifier', () => teamIdentifier);
        return WithTeamIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    TeamsRequestBuilder clone() {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams", pathParameters) ;
    /// Instantiates a new [TeamsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TeamsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams", {RequestInformation.rawUrlKey : rawUrl}) ;
}
