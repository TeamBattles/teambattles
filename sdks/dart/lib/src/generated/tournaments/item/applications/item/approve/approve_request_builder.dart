// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\applications\{participantId}\approve
class ApproveRequestBuilder extends BaseRequestBuilder<ApproveRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    ApproveRequestBuilder clone() {
        return ApproveRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ApproveRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApproveRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/applications/{participantId}/approve", pathParameters) ;
    /// Instantiates a new [ApproveRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ApproveRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/applications/{participantId}/approve", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Approves a PENDING application, moving the team into the tournament and incrementing the participant count. Answers 409 error_tournament_full when the tournament is at capacity and 400 error_invalid_input when the application is not pending. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies. A participant belonging to another tournament answers 404, identically to an unknown one.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(requestConfiguration);
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
    /// Approves a PENDING application, moving the team into the tournament and incrementing the participant count. Answers 409 error_tournament_full when the tournament is at capacity and 400 error_invalid_input when the application is not pending. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies. A participant belonging to another tournament answers 404, identically to an unknown one.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
