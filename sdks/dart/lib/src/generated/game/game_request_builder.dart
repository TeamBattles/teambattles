// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './matches/matches_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \game
class GameRequestBuilder extends BaseRequestBuilder<GameRequestBuilder> {
    ///  The matches property
    MatchesRequestBuilder get matches {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    GameRequestBuilder clone() {
        return GameRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GameRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GameRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game", pathParameters) ;
    /// Instantiates a new [GameRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GameRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game", {RequestInformation.rawUrlKey : rawUrl}) ;
}
