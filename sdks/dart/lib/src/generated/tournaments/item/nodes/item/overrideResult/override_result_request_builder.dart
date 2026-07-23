// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_override_node_result_body.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\nodes\{nodeId}\override-result
class OverrideResultRequestBuilder extends BaseRequestBuilder<OverrideResultRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    OverrideResultRequestBuilder clone() {
        return OverrideResultRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [OverrideResultRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OverrideResultRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/override-result", pathParameters) ;
    /// Instantiates a new [OverrideResultRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    OverrideResultRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/nodes/{nodeId}/override-result", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node's winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
    ///  [body] Bracket node result override payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentOverrideNodeResultBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
    /// Applies an organizer-decided result to a bracket node and advances the bracket. Requires the tournaments bracket capability and ADMIN authority on the tournament - a tournament MODERATOR answers 403. The result must be decisive: the scores may not be equal, and one side must reach the node's winsNeeded (ceil(bestOf / 2)); a winning score above winsNeeded is accepted. Answers 400 error_invalid_input when the node is not READY or IN_PROGRESS, when either entrant is missing or disqualified, when the linked match has already started, or when the scores are not a decisive pair of non-negative integers.
    ///  [body] Bracket node result override payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentOverrideNodeResultBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
