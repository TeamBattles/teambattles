// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\invites\{inviteId}\revoke
class RevokeRequestBuilder extends BaseRequestBuilder<RevokeRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RevokeRequestBuilder clone() {
        return RevokeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RevokeRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RevokeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}/revoke", pathParameters) ;
    /// Instantiates a new [RevokeRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RevokeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/invites/{inviteId}/revoke", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Revokes a PENDING team invite. Requires the tournaments invites capability and ADMIN authority - the same floor as issuing one, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403 but can still read the invite list. Answers 400 error_invalid_input when the invite is not pending: an already-accepted team is a participant, so remove them with the participant removal endpoint instead. No notification is sent - the invite simply disappears for the team.
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
    /// Revokes a PENDING team invite. Requires the tournaments invites capability and ADMIN authority - the same floor as issuing one, because in an INVITE_ONLY tournament the invite is the entry gate; a tournament MODERATOR answers 403 but can still read the invite list. Answers 400 error_invalid_input when the invite is not pending: an already-accepted team is a participant, so remove them with the participant removal endpoint instead. No notification is sent - the invite simply disappears for the team.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
