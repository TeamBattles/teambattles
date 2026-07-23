// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/error.dart';
import '../../models/tournament_discover_body.dart';
import '../../models/tournament_discover_page.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\discover
class DiscoverRequestBuilder extends BaseRequestBuilder<DiscoverRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DiscoverRequestBuilder clone() {
        return DiscoverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DiscoverRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DiscoverRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/discover", pathParameters) ;
    /// Instantiates a new [DiscoverRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DiscoverRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/discover", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns publicly listed tournaments, featured entries first. Unlisted and draft tournaments are never included, whoever asks. Requires tournaments.tournament_public:read.
    ///  [body] Filters for public tournament discovery.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentDiscoverPage?> postAsync(TournamentDiscoverBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentDiscoverPage>(requestInfo, TournamentDiscoverPage.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns publicly listed tournaments, featured entries first. Unlisted and draft tournaments are never included, whoever asks. Requires tournaments.tournament_public:read.
    ///  [body] Filters for public tournament discovery.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentDiscoverBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
