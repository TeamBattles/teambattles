// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/twitch_stream_history.dart';
import './history_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \twitch\streams\history
class HistoryRequestBuilder extends BaseRequestBuilder<HistoryRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    HistoryRequestBuilder clone() {
        return HistoryRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [HistoryRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    HistoryRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/streams/history{?id*,username*}", pathParameters) ;
    /// Instantiates a new [HistoryRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    HistoryRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/streams/history{?id*,username*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TwitchStreamHistory?> getAsync([void Function(RequestConfiguration<HistoryRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '503' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TwitchStreamHistory>(requestInfo, TwitchStreamHistory.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the streams the Battles Replay Indexer recorded for a Twitch channel, including streams Twitch never published as videos, with the CDN host and path timestamp of every recording it found. Provide exactly one of the username or id query parameters. Public: no API key. A channel that is not indexed yet is added by the lookup and answers with an empty list and the warning_index_just_added warning. Answers carry codes and values, never sentences. Successful answers are cached for five minutes.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<HistoryRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<HistoryRequestBuilderGetQueryParameters>(requestConfiguration, () => HistoryRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
