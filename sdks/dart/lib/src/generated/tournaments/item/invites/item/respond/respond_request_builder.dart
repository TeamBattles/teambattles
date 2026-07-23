// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_invite_respond_body.dart';
import '../../../../../models/tournament_invite_respond_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\invites\{inviteId}\respond
class RespondRequestBuilder extends BaseRequestBuilder<RespondRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RespondRequestBuilder clone() {
        return RespondRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RespondRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RespondRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}/respond", pathParameters) ;
    /// Instantiates a new [RespondRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RespondRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}/respond", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Answers an organizer's invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry's full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament's teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
    ///  [body] Captain response to a tournament invite.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentInviteRespondResponse?> postAsync(TournamentInviteRespondBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<TournamentInviteRespondResponse>(requestInfo, TournamentInviteRespondResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Answers an organizer's invite for a team you lead. The invite must still be PENDING; an already-answered or revoked invite answers 400 error_invalid_input.ACCEPTING IS ENTRY, and carries entry's full refusal set. Supply roster - it is required whenever accept is true, and omitting it is rejected as an invalid request rather than silently failing later. The array must hold at least the tournament's teamSize active members of the invited team, or the request answers 400 error_roster_too_small. Acceptance also enforces the pre-start window (400 error_registration_closed), capacity (409 error_tournament_full), and one live entry per team (409 error_already_entered). On success the response carries the participantId, which is the handle for check-in and withdraw.DECLINING IS ALWAYS AVAILABLE. roster is ignored when accept is false, and the competitive-ban gate applies only to acceptance - a captain serving a ban can decline an invite so the organizer can move on, but receives 403 error_competitive_banned if they try to accept.Authority comes from the invite: you must be the captain, co-captain, or organization owner of the invited team. An inviteId belonging to a different tournament answers 404 error_tournament_not_found. Invite IDs are returned by GET /tournaments/{identifier}/me. Requires the tournaments actor entry capability at read-write.
    ///  [body] Captain response to a tournament invite.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentInviteRespondBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
