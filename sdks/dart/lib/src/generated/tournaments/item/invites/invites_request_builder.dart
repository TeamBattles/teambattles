// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_invite_team_body.dart';
import '../../../models/tournament_invites_response.dart';
import '../../../models/tournament_write_ack.dart';
import './item/with_invite_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\invites
class InvitesRequestBuilder extends BaseRequestBuilder<InvitesRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.invites.item collection
    ///  [inviteId] Tournament invite ID, as returned by GET /tournaments/{identifier}/me for a team you lead.
    WithInviteItemRequestBuilder byInviteId(String inviteId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('inviteId', () => inviteId);
        return WithInviteItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    InvitesRequestBuilder clone() {
        return InvitesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [InvitesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    InvitesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites", pathParameters) ;
    /// Instantiates a new [InvitesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    InvitesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team's existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentInvitesResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentInvitesResponse>(requestInfo, TournamentInvitesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team's existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
    ///  [body] Tournament team invitation payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentInviteTeamBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
    /// Returns every team invite issued for the tournament, resolved by slug, in all four states. Re-inviting a team reuses that team's existing row rather than appending a new one, so there is exactly one invite per team and its `status` is the current state. Reading requires tournaments.tournament_admin:read on the key AND that the caller manages the tournament (host, tournament ADMIN, or tournament MODERATOR); sending and revoking invites requires ADMIN. Tournament API access is gated at api_pro on the tournament HOST OWNER's personal developer plan. An organization holding a consumer subscription does not satisfy this - the developer plan ladder has no organization arm.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
    /// Invites a team to the tournament and notifies its captains. Requires the tournaments invites capability and ADMIN authority - strictly higher than the MANAGER floor for reading the invite list, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403. Re-inviting a team reuses that team's existing invite row rather than creating a second one, so retries cannot mint duplicates. Answers 400 error_invalid_input when the team does not exist, plays a different game to the tournament, or already holds a PENDING or ACCEPTED invite.
    ///  [body] Tournament team invitation payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentInviteTeamBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
