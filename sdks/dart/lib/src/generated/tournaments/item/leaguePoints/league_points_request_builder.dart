// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_league_points_rejected.dart';
import '../../../models/tournament_league_points_request_body.dart';
import '../../../models/tournament_league_points_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\league-points
class LeaguePointsRequestBuilder extends BaseRequestBuilder<LeaguePointsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    LeaguePointsRequestBuilder clone() {
        return LeaguePointsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LeaguePointsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LeaguePointsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/league-points", pathParameters) ;
    /// Instantiates a new [LeaguePointsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LeaguePointsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/league-points", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Sets whether a league-hosted tournament awards league points on finalization, and the placement curve it awards them by. LEAGUE HOSTS ONLY - a tournament hosted by a user or an organization answers 400. Editable until the tournament finalizes; a COMPLETED or CANCELLED tournament answers 400. These two settings are NOT material fields, so this endpoint applies them directly and never routes them through re-approval, even on an approved tournament - that is exactly why they are not editable via the update endpoint. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [body] League placement-points configuration.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentLeaguePointsResponse?> postAsync(TournamentLeaguePointsRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  TournamentLeaguePointsRejected.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentLeaguePointsResponse>(requestInfo, TournamentLeaguePointsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Sets whether a league-hosted tournament awards league points on finalization, and the placement curve it awards them by. LEAGUE HOSTS ONLY - a tournament hosted by a user or an organization answers 400. Editable until the tournament finalizes; a COMPLETED or CANCELLED tournament answers 400. These two settings are NOT material fields, so this endpoint applies them directly and never routes them through re-approval, even on an approved tournament - that is exactly why they are not editable via the update endpoint. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [body] League placement-points configuration.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentLeaguePointsRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
