// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/error.dart';
import '../models/tournament_create_request_body.dart';
import '../models/tournament_create_response.dart';
import './discover/discover_request_builder.dart';
import './item/with_identifier_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments
class TournamentsRequestBuilder extends BaseRequestBuilder<TournamentsRequestBuilder> {
    ///  The discover property
    DiscoverRequestBuilder get discover {
        return DiscoverRequestBuilder(pathParameters, requestAdapter);
    }
    /// Gets an item from the teambattles.tournaments.item collection
    ///  [identifier] Tournament slug.
    WithIdentifierItemRequestBuilder byIdentifier(String identifier) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('identifier', () => identifier);
        return WithIdentifierItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    TournamentsRequestBuilder clone() {
        return TournamentsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [TournamentsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TournamentsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments", pathParameters) ;
    /// Instantiates a new [TournamentsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    TournamentsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person's developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
    ///  [body] A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentCreateResponse?> postAsync(TournamentCreateRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '409' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentCreateResponse>(requestInfo, TournamentCreateResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Creates a tournament as a DRAFT with approval status NOT_SUBMITTED. Nothing is public yet: call submit-for-approval, then open registration once staff approve.HOST AUTHORITY. `hostType` and `hostId` are yours to choose, but not to invent - you must actually hold the authority you name, or the request is refused. `user` requires `hostId` to be your own user id (otherwise 403 error_forbidden); `org` requires an active OWNER or ADMIN membership of that organization (otherwise 403 error_not_org_admin); `league` requires an active league ADMIN or OWNER membership (otherwise 403 error_league_admin_required). You must also be eligible to host at all - a paid plan, or an account at least 30 days old, and not competitively banned - or the request is 403 error_not_eligible_to_host.BILLING. Creation is billed to YOU, the key owner, because there is no tournament yet to resolve a host from. From this point on the billing flips: every organizer request against the tournament is billed to the HOST - the organization owner or the league owner - including requests made by tournament staff you add later. Choosing a host is therefore the act that binds that person's developer plan, which is exactly why the authority check above is strict.Unlike the rest of the tournament family this endpoint takes no `identifier`, so it is caller-billed and requires only the tournaments lifecycle capability on the key plus the tournamentOrganizerApi feature on your own plan.Supply an optional `Idempotency-Key` request header to make retries safe: an identical key and body replays the original tournament id and slug without creating a second tournament, while the same key with a different body returns 409 error_idempotency_key_conflict. Without the header a retried request creates a SECOND tournament, because a tournament has no natural key to collapse on.
    ///  [body] A new tournament. Fields this schema does not list are IGNORED rather than rejected, so a misspelled key silently does nothing - this matters most inside `defaultMatchConfig`, where a dropped key would produce a tournament whose matches cannot be generated.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentCreateRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
