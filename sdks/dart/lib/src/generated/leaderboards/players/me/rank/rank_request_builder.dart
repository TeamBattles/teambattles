// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/leaderboard_rank_response.dart';
import './rank_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \leaderboards\players\me\rank
class RankRequestBuilder extends BaseRequestBuilder<RankRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RankRequestBuilder clone() {
        return RankRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RankRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RankRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards/players/me/rank{?sortBy*}", pathParameters) ;
    /// Instantiates a new [RankRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RankRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards/players/me/rank{?sortBy*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the API key owner's own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeaderboardRankResponse?> getAsync([void Function(RequestConfiguration<RankRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeaderboardRankResponse>(requestInfo, LeaderboardRankResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the API key owner's own rank in the global player leaderboard (the principal is ranked, so there is no identifier path param, unlike the team and organization rank endpoints). Sort with sortBy (wins, winRate, or experience; default wins). rank is null when the owner has no completed matches, has a private profile, is currently banned, or ranks beyond the bounded best-effort scan window (about 2000 entries). gameSlug is not supported and returns 400. Requires users.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<RankRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RankRequestBuilderGetQueryParameters>(requestConfiguration, () => RankRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
