// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../../../../models/error.dart';
import '../../../../../../models/tournament_write_ack.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\teams\{teamIdentifier}\roster\{rosterEntryId}
class WithRosterEntryItemRequestBuilder extends BaseRequestBuilder<WithRosterEntryItemRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    WithRosterEntryItemRequestBuilder clone() {
        return WithRosterEntryItemRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [WithRosterEntryItemRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRosterEntryItemRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster/{rosterEntryId}", pathParameters) ;
    /// Instantiates a new [WithRosterEntryItemRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    WithRosterEntryItemRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/teams/{teamIdentifier}/roster/{rosterEntryId}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Removes a roster entry from a team you lead. The entry must belong to BOTH the tournament and the team in the path; an entry from another tournament or another team answers 404 error_tournament_not_found, identically to one that does not exist, so this endpoint is not a cross-team existence oracle. Roster entry IDs come from GET /tournaments/{identifier}/me for your own entry, or from the participants endpoint for the rest of your team. Removing an entry sourced from the free-agent pool releases that player back to the pool as AVAILABLE - the step that must precede removing a picked-up agent from the pool. Requires the tournaments actor roster capability.
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
    /// Removes a roster entry from a team you lead. The entry must belong to BOTH the tournament and the team in the path; an entry from another tournament or another team answers 404 error_tournament_not_found, identically to one that does not exist, so this endpoint is not a cross-team existence oracle. Roster entry IDs come from GET /tournaments/{identifier}/me for your own entry, or from the participants endpoint for the rest of your team. Removing an entry sourced from the free-agent pool releases that player back to the pool as AVAILABLE - the step that must precede removing a picked-up agent from the pool. Requires the tournaments actor roster capability.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toDeleteRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.delete, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
