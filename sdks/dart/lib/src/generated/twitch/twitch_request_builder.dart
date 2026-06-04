// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './badges/badges_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \twitch
class TwitchRequestBuilder extends BaseRequestBuilder<TwitchRequestBuilder> {
    ///  The badges property
    BadgesRequestBuilder get badges {
        return BadgesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    TwitchRequestBuilder clone() {
        return TwitchRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TwitchRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TwitchRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch", pathParameters) ;
    /// Instantiates a new [TwitchRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TwitchRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch", {RequestInformation.rawUrlKey : rawUrl}) ;
}
