// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/error.dart';
import '../../../models/tournament_participants_response.dart';
import './item/with_participant_item_request_builder.dart';

/// auto generated
/// Builds and executes requests for operations under \tournaments\{identifier}\participants
class ParticipantsRequestBuilder extends BaseRequestBuilder<ParticipantsRequestBuilder> {
    /// Gets an item from the teambattles.tournaments.item.participants.item collection
    ///  [participantId] Tournament participant ID.
    WithParticipantItemRequestBuilder byParticipantId(String participantId) {
        var urlTplParams = Map.of(pathParameters);
        urlTplParams.putIfAbsent('participantId', () => participantId);
        return WithParticipantItemRequestBuilder(urlTplParams, requestAdapter);
    }
    /// Clones the requestbuilder.
    @override
    ParticipantsRequestBuilder clone() {
        return ParticipantsRequestBuilder(pathParameters, requestAdapter);
    }
    /// Instantiates a new [ParticipantsRequestBuilder] and sets the default values.
    ///  [pathParameters] Path parameters for the request
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ParticipantsRequestBuilder(Map<String, dynamic> pathParameters, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants", pathParameters) ;
    /// Instantiates a new [ParticipantsRequestBuilder] and sets the default values.
    ///  [rawUrl] The raw URL to use for the request builder.
    ///  [requestAdapter] The request adapter to use to execute the requests.
    ParticipantsRequestBuilder.withUrl(String rawUrl, RequestAdapter requestAdapter) : super(requestAdapter, "{+baseurl}/tournaments/{identifier}/participants", {RequestInformation.rawUrlKey : rawUrl}) ;
    /// Returns every participating team with its tournament roster, resolved by slug. Includes pending, approved, withdrawn, and disqualified entries - filter on `status` for the active field. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    Future<TournamentParticipantsResponse?> getAsync([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) async {
        var requestInfo = toGetRequestInformation(requestConfiguration);
        final errorMapping = <String, ParsableFactory<Parsable>>{
            '401' :  Error.createFromDiscriminatorValue,
            '403' :  Error.createFromDiscriminatorValue,
            '404' :  Error.createFromDiscriminatorValue,
            '429' :  Error.createFromDiscriminatorValue,
            '500' :  Error.createFromDiscriminatorValue,
        };
        return await requestAdapter.send<TournamentParticipantsResponse>(requestInfo, TournamentParticipantsResponse.createFromDiscriminatorValue, errorMapping);
    }
    /// Returns every participating team with its tournament roster, resolved by slug. Includes pending, approved, withdrawn, and disqualified entries - filter on `status` for the active field. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
    ///  [requestConfiguration] Configuration for the request such as headers, query parameters, and middleware options.
    RequestInformation toGetRequestInformation([void Function(RequestConfiguration<DefaultQueryParameters>)? requestConfiguration]) {
        var requestInfo = RequestInformation(httpMethod : HttpMethod.get, urlTemplate : urlTemplate, pathParameters :  pathParameters);
        requestInfo.configure<DefaultQueryParameters>(requestConfiguration, () => DefaultQueryParameters());
        requestInfo.headers.put('Accept', 'application/json');
        return requestInfo;
    }
}
