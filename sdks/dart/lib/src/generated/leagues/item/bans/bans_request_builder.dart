// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/bans_request_body.dart';
import '../../../models/error.dart';
import '../../../models/league_bans.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\bans
class BansRequestBuilder extends BaseRequestBuilder<BansRequestBuilder> {
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
    /// Returns team bans for a league resolved by slug, with optional status filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
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
    /// Returns team bans for a league resolved by slug, with optional status filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
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
