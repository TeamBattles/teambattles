// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './approve/approve_request_builder.dart';
import './deny/deny_request_builder.dart';
import './remove/remove_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\teams\{leagueTeamId}
class WithLeagueTeamItemRequestBuilder extends BaseRequestBuilder<WithLeagueTeamItemRequestBuilder> {
    ///  The approve property
    ApproveRequestBuilder get approve {
        return ApproveRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The deny property
    DenyRequestBuilder get deny {
        return DenyRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The remove property
    RemoveRequestBuilder get remove {
        return RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithLeagueTeamItemRequestBuilder clone() {
        return WithLeagueTeamItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithLeagueTeamItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLeagueTeamItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}", pathParameters) ;
    /// Instantiates a new [WithLeagueTeamItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLeagueTeamItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/teams/{leagueTeamId}", {RequestInformation.rawUrlKey : rawUrl}) ;
}
