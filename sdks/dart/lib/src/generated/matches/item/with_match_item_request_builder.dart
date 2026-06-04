// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './scores/scores_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}
class WithMatchItemRequestBuilder extends BaseRequestBuilder<WithMatchItemRequestBuilder> {
    ///  The scores property
    ScoresRequestBuilder get scores {
        return ScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithMatchItemRequestBuilder clone() {
        return WithMatchItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithMatchItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMatchItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}", pathParameters) ;
    /// Instantiates a new [WithMatchItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMatchItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
