// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/update_lobby_code_request_body.dart';
import '../../../models/update_lobby_code_response.dart';

/// auto generated
/// Builds and executes requests for operations under \matches\{matchId}\lobby-code
class LobbyCodeRequestBuilder extends BaseRequestBuilder<LobbyCodeRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    LobbyCodeRequestBuilder clone() {
        return LobbyCodeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [LobbyCodeRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LobbyCodeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/lobby-code", pathParameters) ;
    /// Instantiates a new [LobbyCodeRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    LobbyCodeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/matches/{matchId}/lobby-code", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Sets or updates the lobby code as the personal API key owner. The owner must captain one participating team. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Sets or updates the match lobby code as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<UpdateLobbyCodeResponse?> postAsync(UpdateLobbyCodeRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
        return await requestAdapter.send<UpdateLobbyCodeResponse>(requestInfo, UpdateLobbyCodeResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Sets or updates the lobby code as the personal API key owner. The owner must captain one participating team. Requires matches.user_matches:read-write and API writes access. Supports an optional `Idempotency-Key` header for safe retries.
    ///  [body] Sets or updates the match lobby code as the API key owner.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(UpdateLobbyCodeRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
