// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/twitch_global_badges.dart';

/// auto generated
/// Builds and executes requests for operations under \twitch\badges\global
class GlobalRequestBuilder extends BaseRequestBuilder<GlobalRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    GlobalRequestBuilder clone() {
        return GlobalRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [GlobalRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GlobalRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/badges/global", pathParameters) ;
    /// Instantiates a new [GlobalRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    GlobalRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/badges/global", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns Twitch's global chat badge sets. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TwitchGlobalBadges?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TwitchGlobalBadges>(requestInfo, TwitchGlobalBadges.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns Twitch's global chat badge sets. The API key owner must have a linked Twitch connection. Requires the connections.twitch permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
