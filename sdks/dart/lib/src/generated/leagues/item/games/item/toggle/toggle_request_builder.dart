// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/toggle_league_game_request_body.dart';
import '../../../../../models/toggle_league_game_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\games\{leagueGameId}\toggle
class ToggleRequestBuilder extends BaseRequestBuilder<ToggleRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ToggleRequestBuilder clone() {
        return ToggleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ToggleRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ToggleRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/games/{leagueGameId}/toggle", pathParameters) ;
    /// Instantiates a new [ToggleRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ToggleRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/games/{leagueGameId}/toggle", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Activates or deactivates a league game. Deactivation cancels pending, accepted, and ready matches for that league game. Requires the league games capability.
    ///  [body] Toggles a league game.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ToggleLeagueGameResponse?> postAsync(ToggleLeagueGameRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ToggleLeagueGameResponse>(requestInfo, ToggleLeagueGameResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Activates or deactivates a league game. Deactivation cancels pending, accepted, and ready matches for that league game. Requires the league games capability.
    ///  [body] Toggles a league game.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(ToggleLeagueGameRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
