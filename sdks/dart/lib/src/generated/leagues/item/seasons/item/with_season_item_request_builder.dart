// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/delete_league_season_response.dart';
import '../../../../models/error.dart';
import '../../../../models/league_season.dart';
import './activate/activate_request_builder.dart';
import './complete/complete_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \leagues\{identifier}\seasons\{seasonId}
class WithSeasonItemRequestBuilder extends BaseRequestBuilder<WithSeasonItemRequestBuilder> {
    ///  The activate property
    ActivateRequestBuilder get activate {
        return ActivateRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The complete property
    CompleteRequestBuilder get complete {
        return CompleteRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithSeasonItemRequestBuilder clone() {
        return WithSeasonItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithSeasonItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithSeasonItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons/{seasonId}", pathParameters) ;
    /// Instantiates a new [WithSeasonItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithSeasonItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/leagues/{identifier}/seasons/{seasonId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes an upcoming league season. Requires the league seasons capability. Replays are not deduped; existing state guards return the current state error if the season no longer exists or is no longer upcoming.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<DeleteLeagueSeasonResponse?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<DeleteLeagueSeasonResponse>(requestInfo, DeleteLeagueSeasonResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a single season that belongs to the resolved league. Requires leagues.league_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<LeagueSeason?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<LeagueSeason>(requestInfo, LeagueSeason.createFromDiscriminatorValue, errorMapping);
    }
    /// Deletes an upcoming league season. Requires the league seasons capability. Replays are not deduped; existing state guards return the current state error if the season no longer exists or is no longer upcoming.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Returns a single season that belongs to the resolved league. Requires leagues.league_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
