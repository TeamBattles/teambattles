// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/api_game_catalog_response.dart';
import '../models/error.dart';
import './item/games_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \games
class GamesRequestBuilder extends BaseRequestBuilder<GamesRequestBuilder> {
    /// Gets an item from the teambattles.games.item collection
    ///  [id] Static public game ID/slug.
    GamesItemRequestBuilder byId(String id) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('id', () => id);
        return GamesItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GamesRequestBuilder clone() {
        return GamesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GamesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GamesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/games", pathParameters) ;
    /// Instantiates a new [GamesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GamesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/games", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the static public game catalog and objective definitions. Requires a valid API key, but no additional permission scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApiGameCatalogResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApiGameCatalogResponse>(requestInfo, ApiGameCatalogResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the static public game catalog and objective definitions. Requires a valid API key, but no additional permission scope.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
