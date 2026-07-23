// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_regenerate_matches_request_body.dart';
import '../../../models/tournament_regenerate_matches_response.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\regenerate-matches
class RegenerateMatchesRequestBuilder extends BaseRequestBuilder<RegenerateMatchesRequestBuilder> {
    /// Clones the requestbuilder.
    @override
    RegenerateMatchesRequestBuilder clone() {
        return RegenerateMatchesRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [RegenerateMatchesRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RegenerateMatchesRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/regenerate-matches", pathParameters) ;
    /// Instantiates a new [RegenerateMatchesRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    RegenerateMatchesRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/regenerate-matches", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [body] Confirmation payload for the match-regeneration repair lever.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentRegenerateMatchesResponse?> postAsync(TournamentRegenerateMatchesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toPostRequestInformation(body, requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '400' :  Error.createFromDiscriminatorValue,
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentRegenerateMatchesResponse>(requestInfo, TournamentRegenerateMatchesResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Recovery lever for an IN_PROGRESS tournament whose match generation partially failed - typically after `POST /tournaments/{identifier}/start`, whose background chain gives each node one attempt before moving on. This starts a FRESH generation pass with an empty skip list, so every currently-eligible node is re-attempted. It is safe to call repeatedly: generation is exactly-once per node, so a node that already has a match is never regenerated and existing matches are never destroyed. A tournament that is not IN_PROGRESS answers 400. The work is ASYNCHRONOUS - `queued` is an upper bound on what will be re-attempted, not a completion count; poll `GET /tournaments/{identifier}/bracket` for the real state. Requires a SEPARATE `regenerate` capability on the key (it is not covered by `lifecycle`), and the key owner must be a tournament ADMIN - a tournamentStaff MODERATOR is NOT sufficient and receives 403.
    ///  [body] Confirmation payload for the match-regeneration repair lever.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toPostRequestInformation(TournamentRegenerateMatchesRequestBody body, [void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.post, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        requestInfo.setContentFromParsable(requestAdapter, 'application/json', body);
        return requestInfo;
    }
}
