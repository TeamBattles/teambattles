// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './matches/matches_request_builder.dart';
import './ongoingMatches/ongoing_matches_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \user
class UserRequestBuilder extends BaseRequestBuilder<UserRequestBuilder> {
    ///  The matches property
    MatchesRequestBuilder get matches {
        return MatchesRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The ongoingMatches property
    OngoingMatchesRequestBuilder get ongoingMatches {
        return OngoingMatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    UserRequestBuilder clone() {
        return UserRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [UserRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UserRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user", pathParameters) ;
    /// Instantiates a new [UserRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    UserRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/user", {RequestInformation.rawUrlKey : rawUrl}) ;
}
