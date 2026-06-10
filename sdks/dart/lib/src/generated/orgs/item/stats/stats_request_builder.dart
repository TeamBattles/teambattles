// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import './stats_get_response.dart';

/// auto generated
/// Builds and executes requests for operations under \orgs\{identifier}\stats
class StatsRequestBuilder extends BaseRequestBuilder<StatsRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    StatsRequestBuilder clone() {
        return StatsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [StatsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StatsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/stats", pathParameters) ;
    /// Instantiates a new [StatsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    StatsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/orgs/{identifier}/stats", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns an organization's aggregate competitive stats by slug or organization ID. Stats are returned when the organization profile is limited or public, or when the API key owner is an active organization member (members can read stats for a private org too); a private organization viewed by a non-member returns 403, and an inactive or unknown organization returns 404. `teams` and `members` count only active, enabled teams and active members. `wins`, `losses`, and `matchesPlayed` are aggregated across the organization's active, enabled teams. `winRate` is wins divided by matchesPlayed and is 0 when no matches have been played. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<StatsGetResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<StatsGetResponse>(requestInfo, StatsGetResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns an organization's aggregate competitive stats by slug or organization ID. Stats are returned when the organization profile is limited or public, or when the API key owner is an active organization member (members can read stats for a private org too); a private organization viewed by a non-member returns 403, and an inactive or unknown organization returns 404. `teams` and `members` count only active, enabled teams and active members. `wins`, `losses`, and `matchesPlayed` are aggregated across the organization's active, enabled teams. `winRate` is wins divided by matchesPlayed and is 0 when no matches have been played. Requires orgs.profile:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
