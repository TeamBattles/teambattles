// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/api_game_playlists_response.dart';
import '../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \games\{id}\playlists
class PlaylistsRequestBuilder extends BaseRequestBuilder<PlaylistsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    PlaylistsRequestBuilder clone() {
        return PlaylistsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PlaylistsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PlaylistsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/games/{id}/playlists", pathParameters) ;
    /// Instantiates a new [PlaylistsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PlaylistsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/games/{id}/playlists", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns playlists from the static public game definition for the requested game ID. Playlist IDs are game-scoped, so shared slugs such as standard are not resolved globally.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApiGamePlaylistsResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApiGamePlaylistsResponse>(requestInfo, ApiGamePlaylistsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns playlists from the static public game definition for the requested game ID. Playlist IDs are game-scoped, so shared slugs such as standard are not resolved globally.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
