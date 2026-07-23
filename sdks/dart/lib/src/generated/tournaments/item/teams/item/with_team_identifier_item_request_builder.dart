// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './apply/apply_request_builder.dart';
import './enter/enter_request_builder.dart';
import './roster/roster_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\teams\{teamIdentifier}
class WithTeamIdentifierItemRequestBuilder extends BaseRequestBuilder<WithTeamIdentifierItemRequestBuilder> {
    ///  The apply property
    ApplyRequestBuilder get apply {
        return ApplyRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The enter property
    EnterRequestBuilder get enter {
        return EnterRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The roster property
    RosterRequestBuilder get roster {
        return RosterRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithTeamIdentifierItemRequestBuilder clone() {
        return WithTeamIdentifierItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithTeamIdentifierItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithTeamIdentifierItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}", pathParameters) ;
    /// Instantiates a new [WithTeamIdentifierItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithTeamIdentifierItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
