// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './item/with_roster_entry_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\roster-entries
class RosterEntriesRequestBuilder extends BaseRequestBuilder<RosterEntriesRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.rosterEntries.item collection
    ///  [rosterEntryId] Tournament roster entry ID.
    WithRosterEntryItemRequestBuilder byRosterEntryId(String rosterEntryId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('rosterEntryId', () => rosterEntryId);
        return WithRosterEntryItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    RosterEntriesRequestBuilder clone() {
        return RosterEntriesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RosterEntriesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RosterEntriesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/roster-entries", pathParameters) ;
    /// Instantiates a new [RosterEntriesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RosterEntriesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/roster-entries", {RequestInformation.rawUrlKey : rawUrl}) ;
}
