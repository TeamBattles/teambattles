// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/api_match_players_response.dart';
import '../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\players
class PlayersRequestBuilder extends BaseRequestBuilder<PlayersRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    PlayersRequestBuilder clone() {
        return PlayersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PlayersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PlayersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/players", pathParameters) ;
    /// Instantiates a new [PlayersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PlayersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/players", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns participant-gated player rows for a match, including roster type and attendance state. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApiMatchPlayersResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApiMatchPlayersResponse>(requestInfo, ApiMatchPlayersResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns participant-gated player rows for a match, including roster type and attendance state. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
