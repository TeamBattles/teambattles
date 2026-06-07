// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/discover_leagues_request_body.dart';
import '../models/error.dart';
import './item/with_identifier_item_request_builder.dart';
import './leagues_post_response.dart';
import './templates/templates_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues
class LeaguesRequestBuilder extends BaseRequestBuilder<LeaguesRequestBuilder> {
    ///  The templates property
    TemplatesRequestBuilder get templates {
        return TemplatesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.leagues.item collection
    ///  [identifier] League slug or Convex league ID.
    WithIdentifierItemRequestBuilder byIdentifier(String identifier) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('identifier', () => identifier);
        return WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    LeaguesRequestBuilder clone() {
        return LeaguesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LeaguesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LeaguesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues", pathParameters) ;
    /// Instantiates a new [LeaguesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LeaguesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
    ///  [body] Filters and offset pagination for discovering leagues.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeaguesPostResponse?> postAsync(DiscoverLeaguesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeaguesPostResponse>(requestInfo, LeaguesPostResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a paginated list of public leagues with optional search and game filtering. Requires the leagues.league_public:read permission.
    ///  [body] Filters and offset pagination for discovering leagues.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(DiscoverLeaguesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
