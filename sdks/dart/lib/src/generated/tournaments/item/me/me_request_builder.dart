// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/my_tournament_entry_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\me
class MeRequestBuilder extends BaseRequestBuilder<MeRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    MeRequestBuilder clone() {
        return MeRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MeRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/me", pathParameters) ;
    /// Instantiates a new [MeRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    MeRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/me", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the API key owner's own state in one tournament, resolved by slug: the teams they may act for, their teams' entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host's plan - a competitor's integration never depends on the organizer's billing.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<MyTournamentEntryResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<MyTournamentEntryResponse>(requestInfo, MyTournamentEntryResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the API key owner's own state in one tournament, resolved by slug: the teams they may act for, their teams' entries, invites addressed to those teams, free-agent offers addressed to them, the rosters they are personally on, and their free-agent pool row. Requires tournaments.actor.entry at read or read-write on the key; a read-only grant is enough, since this endpoint performs no writes.This is the discovery endpoint for the competitor surface. Most competitor write endpoints are keyed by an opaque resource id - `participantId`, `inviteId`, `offerId`, `rosterEntryId` - that is returned here and nowhere else, so call this first.Every collection is an ARRAY and is returned whole, including terminal rows: withdrawn, denied, removed and disqualified entries, responded invites, and expired, declined or revoked offers. A caller acting for several teams in one tournament has several entries and receives all of them. Do not assume at most one of anything.No viewability filter is applied, because every field is already keyed to the caller. A tournament still in DRAFT that the caller has been invited to therefore answers 200, which is what makes the invite answerable before the tournament is published. A slug that does not resolve at all answers 404.Unlike the organizer endpoints this call is billed to the KEY OWNER rather than the tournament host, and is gated on the `writes` API feature (api_pro) rather than on the host's plan - a competitor's integration never depends on the organizer's billing.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
