// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_mode_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \user\game-ranks\{gameId}
class WithGameItemRequestBuilder extends BaseRequestBuilder<WithGameItemRequestBuilder> {
    /// Gets an item from the teambattles.user.gameRanks.item.item collection
    ///  [mode] Game mode / playlist of the rank to delete.
    WithModeItemRequestBuilder byMode(String mode) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('mode', () => mode);
        return WithModeItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithGameItemRequestBuilder clone() {
        return WithGameItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithGameItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithGameItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/game-ranks/{gameId}", pathParameters) ;
    /// Instantiates a new [WithGameItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithGameItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user/game-ranks/{gameId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
