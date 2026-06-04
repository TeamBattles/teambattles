// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_standings.dart';
import '../../../models/standings_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\standings
class StandingsRequestBuilder extends BaseRequestBuilder<StandingsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    StandingsRequestBuilder clone() {
        return StandingsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StandingsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StandingsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/standings", pathParameters) ;
    /// Instantiates a new [StandingsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StandingsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/standings", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns approved teams with their season stats, ranked by standings position, for a league resolved by slug. Requires the leagues.league_public:read permission.
    ///  [body] Season and game filters for league standings.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueStandings?> postAsync(StandingsRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueStandings>(requestInfo, LeagueStandings.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns approved teams with their season stats, ranked by standings position, for a league resolved by slug. Requires the leagues.league_public:read permission.
    ///  [body] Season and game filters for league standings.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(StandingsRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
