// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './accept/accept_request_builder.dart';
import './refuse/refuse_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\challenges
class ChallengesRequestBuilder extends BaseRequestBuilder<ChallengesRequestBuilder> {
    ///  The accept property
    AcceptRequestBuilder get accept {
        return AcceptRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The refuse property
    RefuseRequestBuilder get refuse {
        return RefuseRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ChallengesRequestBuilder clone() {
        return ChallengesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ChallengesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChallengesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/challenges", pathParameters) ;
    /// Instantiates a new [ChallengesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ChallengesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/challenges", {RequestInformation.rawUrlKey : rawUrl}) ;
}
