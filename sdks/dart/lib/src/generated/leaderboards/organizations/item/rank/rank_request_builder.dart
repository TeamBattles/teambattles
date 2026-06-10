// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/leaderboard_rank_response.dart';
import './rank_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \leaderboards\organizations\{identifier}\rank
class RankRequestBuilder extends BaseRequestBuilder<RankRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RankRequestBuilder clone() {
        return RankRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RankRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RankRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards/organizations/{identifier}/rank{?gameSlug*,sortBy*}", pathParameters) ;
    /// Instantiates a new [RankRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RankRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leaderboards/organizations/{identifier}/rank{?gameSlug*,sortBy*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns an organization's 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game's stats only; omit it for the global all-games rank. Organization stats are aggregated from the org's active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeaderboardRankResponse?> getAsync([void Function(RequestConfiguration<RankRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeaderboardRankResponse>(requestInfo, LeaderboardRankResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns an organization's 1-based rank for the requested leaderboard filters, or null when the organization is unranked (no qualifying match activity for the filter). Resolve the org by slug or Convex organization ID. sortBy defaults to wins (also winRate, experience). Pass gameSlug to rank by that game's stats only; omit it for the global all-games rank. Organization stats are aggregated from the org's active, enabled, non-private teams. Ranking counts only public, active, non-disabled organizations with at least one match. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<RankRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<RankRequestBuilderGetQueryParameters>(requestConfiguration, () => RankRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
