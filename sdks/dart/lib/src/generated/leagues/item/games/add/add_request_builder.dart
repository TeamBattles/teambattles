// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/add_league_game_request_body.dart';
import '../../../../models/error.dart';
import '../../../../models/league_game_write_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\games\add
class AddRequestBuilder extends BaseRequestBuilder<AddRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    AddRequestBuilder clone() {
        return AddRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [AddRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AddRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/games/add", pathParameters) ;
    /// Instantiates a new [AddRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    AddRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/games/add", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Adds an active game to a league. Requires a league-operator key bound to the league and the league games capability.
    ///  [body] Adds a league game.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueGameWriteResponse?> postAsync(AddLeagueGameRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<LeagueGameWriteResponse>(requestInfo, LeagueGameWriteResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Adds an active game to a league. Requires a league-operator key bound to the league and the league games capability.
    ///  [body] Adds a league game.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(AddLeagueGameRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
