// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/league_activity_feed_request_body.dart';
import '../../../models/league_activity_feed_response.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\activity-feed
class ActivityFeedRequestBuilder extends BaseRequestBuilder<ActivityFeedRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ActivityFeedRequestBuilder clone() {
        return ActivityFeedRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ActivityFeedRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ActivityFeedRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/activity-feed", pathParameters) ;
    /// Instantiates a new [ActivityFeedRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ActivityFeedRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/activity-feed", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns recent league activity entries. Requires a league-operator key bound to the league and leagues.league_admin:read.
    ///  [body] Cursor pagination options for a league activity feed.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueActivityFeedResponse?> postAsync(LeagueActivityFeedRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueActivityFeedResponse>(requestInfo, LeagueActivityFeedResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns recent league activity entries. Requires a league-operator key bound to the league and leagues.league_admin:read.
    ///  [body] Cursor pagination options for a league activity feed.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(LeagueActivityFeedRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
