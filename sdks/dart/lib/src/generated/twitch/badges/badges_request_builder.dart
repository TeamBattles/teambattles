// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './channel/channel_request_builder.dart';
import './global/global_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \twitch\badges
class BadgesRequestBuilder extends BaseRequestBuilder<BadgesRequestBuilder> {
    ///  The channel property
    ChannelRequestBuilder get channel {
        return ChannelRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The global property
    GlobalRequestBuilder get global {
        return GlobalRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    BadgesRequestBuilder clone() {
        return BadgesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [BadgesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BadgesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/badges", pathParameters) ;
    /// Instantiates a new [BadgesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BadgesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/badges", {RequestInformation.rawUrlKey : rawUrl}) ;
}
