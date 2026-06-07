// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_seasons.dart';
import '../../../models/seasons_request_body.dart';
import './item/with_season_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\seasons
class SeasonsRequestBuilder extends BaseRequestBuilder<SeasonsRequestBuilder> {
    /// Gets an item from the teambattles.leagues.item.seasons.item collection
    ///  [seasonId] League season ID.
    WithSeasonItemRequestBuilder bySeasonId(String seasonId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('seasonId', () => seasonId);
        return WithSeasonItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    SeasonsRequestBuilder clone() {
        return SeasonsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SeasonsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SeasonsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons", pathParameters) ;
    /// Instantiates a new [SeasonsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SeasonsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
    ///  [body] Game and status filters for league seasons.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueSeasons?> postAsync(SeasonsRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueSeasons>(requestInfo, LeagueSeasons.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns seasons for a league resolved by slug, with optional game and status filtering. Requires the leagues.league_public:read permission.
    ///  [body] Game and status filters for league seasons.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(SeasonsRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
