// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/game_match_rosters_response.dart';

/// auto generated
/// Builds and executes requests for operations under \game\matches\{matchId}\rosters
class RostersRequestBuilder extends BaseRequestBuilder<RostersRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RostersRequestBuilder clone() {
        return RostersRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RostersRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RostersRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}/rosters", pathParameters) ;
    /// Instantiates a new [RostersRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RostersRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/game/matches/{matchId}/rosters", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the creator and accepted team rosters for a match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<GameMatchRostersResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<GameMatchRostersResponse>(requestInfo, GameMatchRostersResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the creator and accepted team rosters for a match, validated to belong to the API key owner's approved game. Requires the game.lifecycle:read permission.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
