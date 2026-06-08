// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_penalties.dart';
import '../../../models/penalties_request_body.dart';
import './create/create_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\penalties
class PenaltiesRequestBuilder extends BaseRequestBuilder<PenaltiesRequestBuilder> {
    ///  The create property
    CreateRequestBuilder get create {
        return CreateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    PenaltiesRequestBuilder clone() {
        return PenaltiesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [PenaltiesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PenaltiesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/penalties", pathParameters) ;
    /// Instantiates a new [PenaltiesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    PenaltiesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/penalties", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns penalties and/or member cooldowns for a league resolved by slug, with optional filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
    ///  [body] Type, team, game, and limit filters for league penalties and cooldowns.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeaguePenalties?> postAsync(PenaltiesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeaguePenalties>(requestInfo, LeaguePenalties.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns penalties and/or member cooldowns for a league resolved by slug, with optional filtering. The API key owner must have a MANAGER+ league role or be TeamBattles staff. Requires the leagues.league_admin:read permission.
    ///  [body] Type, team, game, and limit filters for league penalties and cooldowns.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(PenaltiesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
