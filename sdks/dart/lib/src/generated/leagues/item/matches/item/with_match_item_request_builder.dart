// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './playerStats/player_stats_request_builder.dart';
import './scores/scores_request_builder.dart';
import './status/status_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\matches\{matchId}
class WithMatchItemRequestBuilder extends BaseRequestBuilder<WithMatchItemRequestBuilder> {
    ///  The playerStats property
    PlayerStatsRequestBuilder get playerStats {
        return PlayerStatsRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The scores property
    ScoresRequestBuilder get scores {
        return ScoresRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The status property
    StatusRequestBuilder get status {
        return StatusRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithMatchItemRequestBuilder clone() {
        return WithMatchItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithMatchItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMatchItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}", pathParameters) ;
    /// Instantiates a new [WithMatchItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMatchItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/matches/{matchId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
