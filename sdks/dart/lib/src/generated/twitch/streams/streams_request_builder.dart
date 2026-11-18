// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './history/history_request_builder.dart';
import './signals/signals_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \twitch\streams
class StreamsRequestBuilder extends BaseRequestBuilder<StreamsRequestBuilder> {
    ///  The history property
    HistoryRequestBuilder get history {
        return HistoryRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The signals property
    SignalsRequestBuilder get signals {
        return SignalsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    StreamsRequestBuilder clone() {
        return StreamsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StreamsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StreamsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/streams", pathParameters) ;
    /// Instantiates a new [StreamsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StreamsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/twitch/streams", {RequestInformation.rawUrlKey : rawUrl}) ;
}
