// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_free_agents_response.dart';
import './free_agents_request_builder_get_query_parameters.dart';
import './item/with_free_agent_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\free-agents
class FreeAgentsRequestBuilder extends BaseRequestBuilder<FreeAgentsRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.freeAgents.item collection
    ///  [freeAgentId] Free-agent pool entry ID, as returned by GET /tournaments/{identifier}/free-agents.
    WithFreeAgentItemRequestBuilder byFreeAgentId(String freeAgentId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('freeAgentId', () => freeAgentId);
        return WithFreeAgentItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    FreeAgentsRequestBuilder clone() {
        return FreeAgentsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [FreeAgentsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    FreeAgentsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents{?viewerParticipantId*}", pathParameters) ;
    /// Instantiates a new [FreeAgentsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    FreeAgentsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/free-agents{?viewerParticipantId*}", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentFreeAgentsResponse?> getAsync([void Function(RequestConfiguration<FreeAgentsRequestBuilderGetQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentFreeAgentsResponse>(requestInfo, TournamentFreeAgentsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<FreeAgentsRequestBuilderGetQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<FreeAgentsRequestBuilderGetQueryParameters>(requestConfiguration, () => FreeAgentsRequestBuilderGetQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
