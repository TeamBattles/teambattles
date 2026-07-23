// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\participants\{participantId}\check-in
class CheckInRequestBuilder extends BaseRequestBuilder<CheckInRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    CheckInRequestBuilder clone() {
        return CheckInRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [CheckInRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CheckInRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/check-in", pathParameters) ;
    /// Instantiates a new [CheckInRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    CheckInRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/check-in", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no 'already checked in' conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentWriteAck>(requestInfo, TournamentWriteAck.createFromDiscriminatorValue, errorMapping);
    }
    /// Confirms that a team you lead is present for a tournament that is about to start. The participant must be APPROVED; a PENDING application or a withdrawn, removed, or disqualified row answers 400 error_invalid_input.SAFE TO RETRY. This endpoint is idempotent by effect: calling it again re-stamps the check-in timestamp and answers 200. There is no 'already checked in' conflict response, so a retry after a dropped connection is always safe. The consequence is that checkedInAt is the time of your LAST successful call, not your first - read it back from GET /tournaments/{identifier}/me rather than assuming it is stable.The check-in window opens checkInOpensMinutesBefore minutes ahead of startsAt; outside it the request answers 400 error_check_in_closed. When the tournament has checkInRequired set to false there is no window and the call simply succeeds, so an integration can call this unconditionally without first branching on the flag.Authority comes from the participant: you must be the captain, co-captain, or organization owner of the team it belongs to. A participantId from a different tournament answers 404 error_tournament_not_found. Requires the tournaments actor check_in capability - a narrower grant than entry, and deliberately not covered by it.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
