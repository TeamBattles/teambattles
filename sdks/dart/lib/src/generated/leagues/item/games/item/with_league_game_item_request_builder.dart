// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/remove_league_game_response.dart';
import './toggle/toggle_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\games\{leagueGameId}
class WithLeagueGameItemRequestBuilder extends BaseRequestBuilder<WithLeagueGameItemRequestBuilder> {
    ///  The toggle property
    ToggleRequestBuilder get toggle {
        return ToggleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithLeagueGameItemRequestBuilder clone() {
        return WithLeagueGameItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithLeagueGameItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLeagueGameItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/games/{leagueGameId}", pathParameters) ;
    /// Instantiates a new [WithLeagueGameItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithLeagueGameItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/games/{leagueGameId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes a game from a league and deletes its non-active league configuration. Requires a league-operator key bound to the league and the league games capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<RemoveLeagueGameResponse?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<RemoveLeagueGameResponse>(requestInfo, RemoveLeagueGameResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Removes a game from a league and deletes its non-active league configuration. Requires a league-operator key bound to the league and the league games capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
