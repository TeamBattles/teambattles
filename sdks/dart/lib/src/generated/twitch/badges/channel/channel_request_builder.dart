// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/twitch_channel_badges.dart';
import './channel_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \twitch\badges\channel
class ChannelRequestBuilder extends BaseRequestBuilder<ChannelRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ChannelRequestBuilder clone() {
        return ChannelRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ChannelRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChannelRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/badges/channel{?id*,username*}", pathParameters) ;
    /// Instantiates a new [ChannelRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChannelRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/badges/channel{?id*,username*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TwitchChannelBadges?> getAsync([void Function(RequestConfiguration<ChannelRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TwitchChannelBadges>(requestInfo, TwitchChannelBadges.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a Twitch channel's chat badge sets. Provide exactly one of the username or id query parameters. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ChannelRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ChannelRequestBuilderGetQueryParameters>(requestConfiguration, () => ChannelRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
