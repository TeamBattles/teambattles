// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/player_leaderboard_response.dart';
import './me/me_request_builder.dart';
import './players_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \leaderboards\players
class PlayersRequestBuilder extends BaseRequestBuilder<PlayersRequestBuilder> {
    ///  The me property
    MeRequestBuilder get me {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    PlayersRequestBuilder clone() {
        return PlayersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PlayersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PlayersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards/players{?limit*,sortBy*}", pathParameters) ;
    /// Instantiates a new [PlayersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PlayersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards/players{?limit*,sortBy*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the global player leaderboard. gameSlug is rejected because player stats are global. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<PlayerLeaderboardResponse?> getAsync([void Function(RequestConfiguration<PlayersRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<PlayerLeaderboardResponse>(requestInfo, PlayerLeaderboardResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the global player leaderboard. gameSlug is rejected because player stats are global. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<PlayersRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<PlayersRequestBuilderGetQueryParameters>(requestConfiguration, () => PlayersRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
