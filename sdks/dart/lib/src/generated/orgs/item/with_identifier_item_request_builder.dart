// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './matches/matches_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs\{identifier}
class WithIdentifierItemRequestBuilder extends BaseRequestBuilder<WithIdentifierItemRequestBuilder> {
    ///  The matches property
    MatchesRequestBuilder get matches {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithIdentifierItemRequestBuilder clone() {
        return WithIdentifierItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}", pathParameters) ;
    /// Instantiates a new [WithIdentifierItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithIdentifierItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
