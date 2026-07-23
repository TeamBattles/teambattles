// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_revert_node_result_body.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\nodes\{nodeId}\revert-result
class RevertResultRequestBuilder extends BaseRequestBuilder<RevertResultRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RevertResultRequestBuilder clone() {
        return RevertResultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RevertResultRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RevertResultRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/revert-result", pathParameters) ;
    /// Instantiates a new [RevertResultRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RevertResultRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/revert-result", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Reverts an applied result on a COMPLETED or WALKOVER node and rolls the bracket back to it, cancelling the unplayed downstream matches the result created. The cascade policy is SHALLOW: answers 409 error_revert_blocked_downstream if any node the result fed has already been played, so revert a chain from its tip inwards. Answers 400 error_invalid_input when the tournament is not IN_PROGRESS, when the node has no applied result, or when a later swiss round has already been paired. `regenerateMatch` defaults to true. Requires the tournaments bracket capability and ADMIN authority - a tournament MODERATOR answers 403.
    ///  [body] Bracket node result revert payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentRevertNodeResultBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
    /// Reverts an applied result on a COMPLETED or WALKOVER node and rolls the bracket back to it, cancelling the unplayed downstream matches the result created. The cascade policy is SHALLOW: answers 409 error_revert_blocked_downstream if any node the result fed has already been played, so revert a chain from its tip inwards. Answers 400 error_invalid_input when the tournament is not IN_PROGRESS, when the node has no applied result, or when a later swiss round has already been paired. `regenerateMatch` defaults to true. Requires the tournaments bracket capability and ADMIN authority - a tournament MODERATOR answers 403.
    ///  [body] Bracket node result revert payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentRevertNodeResultBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
