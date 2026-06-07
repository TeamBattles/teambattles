// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_season_options.dart';
import '../../../models/league_season_options_request_body.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\season-options
class SeasonOptionsRequestBuilder extends BaseRequestBuilder<SeasonOptionsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    SeasonOptionsRequestBuilder clone() {
        return SeasonOptionsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SeasonOptionsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SeasonOptionsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/season-options", pathParameters) ;
    /// Instantiates a new [SeasonOptionsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SeasonOptionsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/season-options", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns season selector options for a league game. Requires leagues.league_public:read.
    ///  [body] Season option selector.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueSeasonOptions?> postAsync(LeagueSeasonOptionsRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueSeasonOptions>(requestInfo, LeagueSeasonOptions.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns season selector options for a league game. Requires leagues.league_public:read.
    ///  [body] Season option selector.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(LeagueSeasonOptionsRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
