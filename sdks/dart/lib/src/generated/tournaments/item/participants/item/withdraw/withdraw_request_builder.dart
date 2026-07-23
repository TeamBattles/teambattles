// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\participants\{participantId}\withdraw
class WithdrawRequestBuilder extends BaseRequestBuilder<WithdrawRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithdrawRequestBuilder clone() {
        return WithdrawRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithdrawRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithdrawRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/withdraw", pathParameters) ;
    /// Instantiates a new [WithdrawRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithdrawRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/withdraw", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team's outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL's tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer's counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
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
    /// Withdraws a team you lead from a tournament, setting its participant row to WITHDRAWN. Works from either PENDING (a pending application) or APPROVED (a confirmed entry); anything else answers 400 error_invalid_input because there is nothing to withdraw.This is NOT a pure status flip - two side effects change state a client may be holding. The team's outbound free-agent offers are all expired, and every free agent it had picked up is released back to the pool and dropped from its tournament roster. Re-read GET /tournaments/{identifier}/me afterwards rather than patching a cached entry.Authority is derived from the participant, not from the URL's tournament: you must be the captain, co-captain, or organization owner of the team that participant belongs to, and a participantId belonging to a team you do not lead answers 403. A participantId belonging to a different tournament answers 404 error_tournament_not_found, identically to one that does not exist.The organizer's counterpart is POST /tournaments/{identifier}/participants/{participantId}/remove, which requires manager authority on the tournament. Requires the tournaments actor entry capability at read-write.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
