// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/match_discover_body.dart';
import '../../models/match_discover_page.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\discover
class DiscoverRequestBuilder extends BaseRequestBuilder<DiscoverRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DiscoverRequestBuilder clone() {
        return DiscoverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DiscoverRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DiscoverRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/discover", pathParameters) ;
    /// Instantiates a new [DiscoverRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DiscoverRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/discover", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns published pending open matches. League matches are excluded unless leagueId is provided. gameId and gameSlug are mutually exclusive. Requires matches.public_matches:read.
    ///  [body] Filters and cursor pagination for public open-match discovery.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<MatchDiscoverPage?> postAsync(MatchDiscoverBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<MatchDiscoverPage>(requestInfo, MatchDiscoverPage.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns published pending open matches. League matches are excluded unless leagueId is provided. gameId and gameSlug are mutually exclusive. Requires matches.public_matches:read.
    ///  [body] Filters and cursor pagination for public open-match discovery.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(MatchDiscoverBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
