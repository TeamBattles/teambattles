// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Returns the players currently AVAILABLE in the tournament free-agent pool, resolved by slug. Pass `viewerParticipantId` to have each agent stamped with whether that participant already has an open offer out to them; the id is re-authorized server-side and an unauthorized or stale value simply yields no stamps. A tournament you may not view answers 404. Requires tournaments.tournament_public:read.
class FreeAgentsRequestBuilderGetQueryParameters implements AbstractQueryParameters {
    ///  Participant ID whose open offers should be reflected in `viewerOfferStatus`. The caller must lead that participant's team and the participant must belong to this tournament, otherwise the field is null for every agent.
    String? viewerParticipantId;
    /// Extracts the query parameters into a map for the URI template parsing.
    @override
    Map<String, dynamic> toMap() {
        return {
            'viewerParticipantId' : viewerParticipantId,
        };
    }
}
