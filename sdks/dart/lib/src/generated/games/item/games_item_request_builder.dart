// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './playlists/playlists_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \games\{id}
class GamesItemRequestBuilder extends BaseRequestBuilder<GamesItemRequestBuilder> {
    ///  The playlists property
    PlaylistsRequestBuilder get playlists {
        return PlaylistsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GamesItemRequestBuilder clone() {
        return GamesItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GamesItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GamesItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/games/{id}", pathParameters) ;
    /// Instantiates a new [GamesItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GamesItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/games/{id}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
