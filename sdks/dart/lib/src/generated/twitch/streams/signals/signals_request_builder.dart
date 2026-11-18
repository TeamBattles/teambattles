// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/stream_signals_body.dart';
import '../../../models/twitch_stream_signals_result.dart';

/// auto generated
/// Builds and executes requests for operations under \twitch\streams\signals
class SignalsRequestBuilder extends BaseRequestBuilder<SignalsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    SignalsRequestBuilder clone() {
        return SignalsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [SignalsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SignalsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/streams/signals", pathParameters) ;
    /// Instantiates a new [SignalsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    SignalsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/streams/signals", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Adds Twitch channels to the Battles Replay Indexer, or renews them, so their streams are recorded from then on. Send 1 to 100 channels as Twitch user ids, each with the reason: favorite, follow or watch. Send it as JSON with Content-Type: application/json. Public: no API key, and no account or user id is sent or stored. Channels Twitch does not have come back in rejected, each with its code.
    ///  [body] Twitch channels to keep recording, each with why it matters to a user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TwitchStreamSignalsResult?> postAsync(StreamSignalsBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '503' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TwitchStreamSignalsResult>(requestInfo, TwitchStreamSignalsResult.createFromDiscriminatorValue, errorMapping);
    }
    /// Adds Twitch channels to the Battles Replay Indexer, or renews them, so their streams are recorded from then on. Send 1 to 100 channels as Twitch user ids, each with the reason: favorite, follow or watch. Send it as JSON with Content-Type: application/json. Public: no API key, and no account or user id is sent or stored. Channels Twitch does not have come back in rejected, each with its code.
    ///  [body] Twitch channels to keep recording, each with why it matters to a user.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(StreamSignalsBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
