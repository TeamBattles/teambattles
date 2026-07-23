// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../models/error.dart';
import '../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\roster-entries\{rosterEntryId}
class WithRosterEntryItemRequestBuilder extends BaseRequestBuilder<WithRosterEntryItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithRosterEntryItemRequestBuilder clone() {
        return WithRosterEntryItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithRosterEntryItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRosterEntryItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/roster-entries/{rosterEntryId}", pathParameters) ;
    /// Instantiates a new [WithRosterEntryItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRosterEntryItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/roster-entries/{rosterEntryId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Deletes one tournament roster entry as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. If the entry was a picked-up free agent, that player is returned to the pool as AVAILABLE - which is the step that must precede removing them from the pool entirely. Answers 400 error_invalid_input when the entry does not exist. Requires the tournaments registration capability.
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
    /// Deletes one tournament roster entry as the organizer. Requires ADMIN authority on the tournament - a tournament MODERATOR is NOT sufficient; a moderator edits only rosters for teams they lead, via the competitor roster endpoint. If the entry was a picked-up free agent, that player is returned to the pool as AVAILABLE - which is the step that must precede removing them from the pool entirely. Answers 400 error_invalid_input when the entry does not exist. Requires the tournaments registration capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
