// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_disqualify_participant_body.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\participants\{participantId}\disqualify
class DisqualifyRequestBuilder extends BaseRequestBuilder<DisqualifyRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DisqualifyRequestBuilder clone() {
        return DisqualifyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DisqualifyRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DisqualifyRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/disqualify", pathParameters) ;
    /// Instantiates a new [DisqualifyRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DisqualifyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants/{participantId}/disqualify", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Disqualifies a participant and propagates the result through a running bracket: the opponent advances by walkover and the disqualified team's linked matches are terminated. Re-read the bracket afterwards rather than assuming the previous shape, and do not assume a fixed walkover score - the applied scoreline depends on the node's format and any head start. The team's outbound free-agent offers are expired and its picked-up free agents are released. `reason` is required and is quoted to the disqualified captain. Requires the tournaments registration capability and MANAGER authority - a tournament MODERATOR qualifies.
    ///  [body] Participant disqualification payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentDisqualifyParticipantBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
    /// Disqualifies a participant and propagates the result through a running bracket: the opponent advances by walkover and the disqualified team's linked matches are terminated. Re-read the bracket afterwards rather than assuming the previous shape, and do not assume a fixed walkover score - the applied scoreline depends on the node's format and any head start. The team's outbound free-agent offers are expired and its picked-up free agents are released. `reason` is required and is quoted to the disqualified captain. Requires the tournaments registration capability and MANAGER authority - a tournament MODERATOR qualifies.
    ///  [body] Participant disqualification payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentDisqualifyParticipantBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
