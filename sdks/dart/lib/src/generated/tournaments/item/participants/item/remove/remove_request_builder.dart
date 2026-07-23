// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_remove_participant_body.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\participants\{participantId}\remove
class RemoveRequestBuilder extends BaseRequestBuilder<RemoveRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RemoveRequestBuilder clone() {
        return RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RemoveRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RemoveRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/remove", pathParameters) ;
    /// Instantiates a new [RemoveRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RemoveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/remove", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Sets the participant to REMOVED, decrementing the participant count if the team was APPROVED. Side effects a client should expect: the team's outbound free-agent offers are expired and the free agents it had picked up are released back to the pool. Unlike disqualification this does NOT propagate through a live bracket. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies.
    ///  [body] Participant removal payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentRemoveParticipantBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
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
    /// Sets the participant to REMOVED, decrementing the participant count if the team was APPROVED. Side effects a client should expect: the team's outbound free-agent offers are expired and the free agents it had picked up are released back to the pool. Unlike disqualification this does NOT propagate through a live bracket. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies.
    ///  [body] Participant removal payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentRemoveParticipantBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
