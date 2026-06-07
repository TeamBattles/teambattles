// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './organizations/organizations_request_builder.dart';
import './players/players_request_builder.dart';
import './teams/teams_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leaderboards
class LeaderboardsRequestBuilder extends BaseRequestBuilder<LeaderboardsRequestBuilder> {
    ///  The organizations property
    OrganizationsRequestBuilder get organizations {
        return OrganizationsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The players property
    PlayersRequestBuilder get players {
        return PlayersRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The teams property
    TeamsRequestBuilder get teams {
        return TeamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    LeaderboardsRequestBuilder clone() {
        return LeaderboardsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LeaderboardsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LeaderboardsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards", pathParameters) ;
    /// Instantiates a new [LeaderboardsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LeaderboardsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards", {RequestInformation.rawUrlKey : rawUrl}) ;
}
