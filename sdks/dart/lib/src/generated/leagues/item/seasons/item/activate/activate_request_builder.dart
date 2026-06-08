// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/activate_league_season_response.dart';
import '../../../../../models/error.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\seasons\{seasonId}\activate
class ActivateRequestBuilder extends BaseRequestBuilder<ActivateRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ActivateRequestBuilder clone() {
        return ActivateRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ActivateRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ActivateRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons/{seasonId}/activate", pathParameters) ;
    /// Instantiates a new [ActivateRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ActivateRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons/{seasonId}/activate", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Activates an upcoming league season. Requires the league seasons capability. Replays are not deduped; existing state guards return the current state error if the season is no longer upcoming.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ActivateLeagueSeasonResponse?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ActivateLeagueSeasonResponse>(requestInfo, ActivateLeagueSeasonResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Activates an upcoming league season. Requires the league seasons capability. Replays are not deduped; existing state guards return the current state error if the season is no longer upcoming.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
