// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tournament_free_agency_join_body.dart';
import '../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agency\me
class MeRequestBuilder extends BaseRequestBuilder<MeRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    MeRequestBuilder clone() {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/me", pathParameters) ;
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agency/me", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Withdraws the API key owner from a tournament's free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team's offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> deleteAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toDeleteRequestInformation(requestConfiguration);
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
    /// Adds the API key owner to a tournament's solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally 'me' - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament's game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team's roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
    ///  [body] Free-agent pool listing payload for the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentFreeAgencyJoinBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentWriteAck>(requestInfo, TournamentWriteAck.createFromDiscriminatorValue, errorMapping);
    }
    /// Withdraws the API key owner from a tournament's free-agent pool. Not being in the pool at all answers 400 error_invalid_input.ORDERING MATTERS AFTER A PICKUP. Once a team's offer has been accepted your pool row is PICKED_UP and you hold a roster entry on that team, and this endpoint refuses with 400 error_invalid_input until you are off that roster. Ask the team to drop you (or the organizer to remove the team) first; when a participant leaves the tournament its picked-up agents are released automatically.Leaving expires every PENDING pickup offer addressed to you in this tournament, and expired offers are never revived - if you rejoin the pool later, captains must offer again. Re-read GET /tournaments/{identifier}/me rather than reusing a cached offer list.Requires the tournaments actor free_agency capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Adds the API key owner to a tournament's solo free-agent pool, where captains can browse and make pickup offers. The path segment is literally 'me' - the pool row is keyed to the authenticated key owner and there is no way to list anyone else.The tournament must have free agency enabled and still be open to joins, or the request answers 400 error_registration_closed. If the tournament's game requires a linked account (for example a Riot or Battle.net connection) and yours is missing, the request answers 403 error_free_agent_account_required - link it on your profile and retry.ONE ROW PER TOURNAMENT. If you are already listed as AVAILABLE, or have been PICKED_UP by a team, the request answers 409 error_free_agent_already_in_pool. Once your previous row is terminal (you withdrew, or an organizer removed you) this endpoint reuses it rather than creating a second, so your history stays a single row. Leaving a team's roster is what releases a PICKED_UP row back to AVAILABLE; you do not rejoin manually after a pickup.Requires the tournaments actor free_agency capability.
    ///  [body] Free-agent pool listing payload for the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentFreeAgencyJoinBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
