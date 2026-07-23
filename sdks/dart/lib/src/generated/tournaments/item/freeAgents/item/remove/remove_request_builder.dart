// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agents\{freeAgentId}\remove
class RemoveRequestBuilder extends BaseRequestBuilder<RemoveRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RemoveRequestBuilder clone() {
        return RemoveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RemoveRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RemoveRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/remove", pathParameters) ;
    /// Instantiates a new [RemoveRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RemoveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents/{freeAgentId}/remove", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input ("Remove the player from the team roster first") and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
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
    /// Withdraws a free agent from the tournament pool as the organizer and expires their pending offers. Requires the tournaments free_agents capability and MANAGER authority - a tournament MODERATOR qualifies. ORDERING: an agent whose status is PICKED_UP is refused with 400 error_invalid_input ("Remove the player from the team roster first") and nothing is written, because withdrawing them while their FREE_AGENT roster entry survives would strand the player - no re-entry path accepts a non-AVAILABLE pool row, and the surviving roster entry keeps the re-pickup guards rejecting. Delete that roster entry first via DELETE /tournaments/{identifier}/roster-entries/{rosterEntryId}, which releases the agent back to AVAILABLE, then call this endpoint. An AVAILABLE agent can be removed directly.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
