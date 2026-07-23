// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../models/error.dart';
import '../../../../../models/tournament_deny_application_body.dart';
import '../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\applications\{participantId}\deny
class DenyRequestBuilder extends BaseRequestBuilder<DenyRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    DenyRequestBuilder clone() {
        return DenyRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [DenyRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DenyRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/applications/{participantId}/deny", pathParameters) ;
    /// Instantiates a new [DenyRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    DenyRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/applications/{participantId}/deny", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Denies a PENDING application and notifies the applying captain, quoting `reason` when supplied. Answers 400 error_invalid_input when the application is not pending. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies.
    ///  [body] Application denial payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentWriteAck?> postAsync(TournamentDenyApplicationBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
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
    /// Denies a PENDING application and notifies the applying captain, quoting `reason` when supplied. Answers 400 error_invalid_input when the application is not pending. Requires the tournaments registration capability and MANAGER authority on the tournament - a tournament MODERATOR qualifies.
    ///  [body] Application denial payload.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentDenyApplicationBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
