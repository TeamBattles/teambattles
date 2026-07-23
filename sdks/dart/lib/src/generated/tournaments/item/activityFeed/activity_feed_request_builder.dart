// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_activity_feed_response.dart';
import './activity_feed_request_builder_get_query_parameters.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\activity-feed
class ActivityFeedRequestBuilder extends BaseRequestBuilder<ActivityFeedRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ActivityFeedRequestBuilder clone() {
        return ActivityFeedRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ActivityFeedRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ActivityFeedRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/activity-feed{?limit*}", pathParameters) ;
    /// Instantiates a new [ActivityFeedRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ActivityFeedRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/activity-feed{?limit*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentActivityFeedResponse?> getAsync([void Function(RequestConfiguration<ActivityFeedRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentActivityFeedResponse>(requestInfo, TournamentActivityFeedResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the tournament's organizer audit log, newest first, resolved by slug. This is a single limit-capped window over the most recent entries and is NOT cursor-paginated - there is no way to page past the newest 100 in v1, so poll and diff on `id`. `action` is open-ended and grows with new organizer surfaces; treat an unrecognised value as informational. Requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament - the host, a tournament ADMIN, or a tournament MODERATOR. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<ActivityFeedRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<ActivityFeedRequestBuilderGetQueryParameters>(requestConfiguration, () => ActivityFeedRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
