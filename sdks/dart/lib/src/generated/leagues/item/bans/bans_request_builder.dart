// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/bans_request_body.dart';
import '../../../models/error.dart';
import '../../../models/league_bans.dart';
import './create/create_request_builder.dart';
import './item/with_ban_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\bans
class BansRequestBuilder extends BaseRequestBuilder<BansRequestBuilder> {
    ///  The create property
    CreateRequestBuilder get create {
        return CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.leagues.item.bans.item collection
    ///  [banId] League ban ID.
    WithBanItemRequestBuilder byBanId(String banId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('banId', () => banId);
        return WithBanItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    BansRequestBuilder clone() {
        return BansRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [BansRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BansRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/bans", pathParameters) ;
    /// Instantiates a new [BansRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    BansRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/bans", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns team bans for a league resolved by slug, with optional status filtering. Requires a personal or developer API key whose owner is currently a league ADMIN of the league in the path (or TeamBattles staff), with leagues.league_admin:read access on the key. These admin reads no longer require a paid developer plan; they stay authority-gated (current league ADMIN) and rate-limited by the league owner's plan. League API WRITE routes still require the leagueOperatorApi feature (api_pro or higher) on the league owner's plan.
    ///  [body] Status filter for league team bans.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueBans?> postAsync(BansRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueBans>(requestInfo, LeagueBans.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns team bans for a league resolved by slug, with optional status filtering. Requires a personal or developer API key whose owner is currently a league ADMIN of the league in the path (or TeamBattles staff), with leagues.league_admin:read access on the key. These admin reads no longer require a paid developer plan; they stay authority-gated (current league ADMIN) and rate-limited by the league owner's plan. League API WRITE routes still require the leagueOperatorApi feature (api_pro or higher) on the league owner's plan.
    ///  [body] Status filter for league team bans.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(BansRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
