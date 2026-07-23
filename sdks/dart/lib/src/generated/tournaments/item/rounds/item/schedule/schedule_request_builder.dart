// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_round_schedule_request_body.dart';
import '../../../../../models/tournament_round_schedule_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\rounds\{roundId}\schedule
class ScheduleRequestBuilder extends BaseRequestBuilder<ScheduleRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ScheduleRequestBuilder clone() {
        return ScheduleRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ScheduleRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ScheduleRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/rounds/{roundId}/schedule", pathParameters) ;
    /// Instantiates a new [ScheduleRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ScheduleRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/rounds/{roundId}/schedule", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Sets or clears the start time of a single round. A COMPLETED round answers 400, and a round that does not belong to the tournament in the path answers 404 error_tournament_not_found - identical to an unknown slug, so the endpoint is not an existence oracle. IMPORTANT: matches that have ALREADY been generated keep the start time they were generated with; the round's `startsAt` is a generation-time snapshot, so this only affects matches generated after the change. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [body] Round schedule payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentRoundScheduleResponse?> postAsync(TournamentRoundScheduleRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentRoundScheduleResponse>(requestInfo, TournamentRoundScheduleResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Sets or clears the start time of a single round. A COMPLETED round answers 400, and a round that does not belong to the tournament in the path answers 404 error_tournament_not_found - identical to an unknown slug, so the endpoint is not an existence oracle. IMPORTANT: matches that have ALREADY been generated keep the start time they were generated with; the round's `startsAt` is a generation-time snapshot, so this only affects matches generated after the change. Requires an API key holding the tournaments lifecycle capability whose owner is a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [body] Round schedule payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentRoundScheduleRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
