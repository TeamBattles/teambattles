// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/api_match_detail_response.dart';
import '../../models/error.dart';
import './accept/accept_request_builder.dart';
import './attendance/attendance_request_builder.dart';
import './cancel/cancel_request_builder.dart';
import './chat/chat_request_builder.dart';
import './forfeit/forfeit_request_builder.dart';
import './lobbyCode/lobby_code_request_builder.dart';
import './players/players_request_builder.dart';
import './ready/ready_request_builder.dart';
import './scores/scores_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}
class WithMatchItemRequestBuilder extends BaseRequestBuilder<WithMatchItemRequestBuilder> {
    ///  The accept property
    AcceptRequestBuilder get accept {
        return AcceptRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The attendance property
    AttendanceRequestBuilder get attendance {
        return AttendanceRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The cancel property
    CancelRequestBuilder get cancel {
        return CancelRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The chat property
    ChatRequestBuilder get chat {
        return ChatRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The forfeit property
    ForfeitRequestBuilder get forfeit {
        return ForfeitRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The lobbyCode property
    LobbyCodeRequestBuilder get lobbyCode {
        return LobbyCodeRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The players property
    PlayersRequestBuilder get players {
        return PlayersRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The ready property
    ReadyRequestBuilder get ready {
        return ReadyRequestBuilder(pathParameters, requestAdapter);
    }
    ///  The scores property
    ScoresRequestBuilder get scores {
        return ScoresRequestBuilder(pathParameters, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    WithMatchItemRequestBuilder clone() {
        return WithMatchItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithMatchItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMatchItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}", pathParameters) ;
    /// Instantiates a new [WithMatchItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithMatchItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<ApiMatchDetailResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<ApiMatchDetailResponse>(requestInfo, ApiMatchDetailResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns a participant-gated match detail projection. Lobby codes and raw match documents are intentionally omitted. Requires one of matches.user_matches:read, matches.team_matches:read, or matches.org_matches:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
