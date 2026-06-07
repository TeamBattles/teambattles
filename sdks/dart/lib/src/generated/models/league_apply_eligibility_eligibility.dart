// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_apply_eligibility_eligibility_eligible_teams.dart';
import './league_apply_eligibility_eligibility_pending_teams.dart';

/// auto generated
/// API key owner's apply-to-join eligibility.
class LeagueApplyEligibilityEligibility implements Parsable {
    ///  The eligibleTeams property
    Iterable<LeagueApplyEligibilityEligibilityEligibleTeams>? eligibleTeams;
    ///  The hasApprovedTeamHere property
    bool? hasApprovedTeamHere;
    ///  The isAuthed property
    bool? isAuthed;
    ///  The pendingTeams property
    Iterable<LeagueApplyEligibilityEligibilityPendingTeams>? pendingTeams;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueApplyEligibilityEligibility createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueApplyEligibilityEligibility();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['eligibleTeams'] = (node) => eligibleTeams = node.getCollectionOfObjectValues<LeagueApplyEligibilityEligibilityEligibleTeams>(LeagueApplyEligibilityEligibilityEligibleTeams.createFromDiscriminatorValue);
        deserializerMap['hasApprovedTeamHere'] = (node) => hasApprovedTeamHere = node.getBoolValue();
        deserializerMap['isAuthed'] = (node) => isAuthed = node.getBoolValue();
        deserializerMap['pendingTeams'] = (node) => pendingTeams = node.getCollectionOfObjectValues<LeagueApplyEligibilityEligibilityPendingTeams>(LeagueApplyEligibilityEligibilityPendingTeams.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<LeagueApplyEligibilityEligibilityEligibleTeams>('eligibleTeams', eligibleTeams);
        writer.writeBoolValue('hasApprovedTeamHere', value:hasApprovedTeamHere);
        writer.writeBoolValue('isAuthed', value:isAuthed);
        writer.writeCollectionOfObjectValues<LeagueApplyEligibilityEligibilityPendingTeams>('pendingTeams', pendingTeams);
    }
}
