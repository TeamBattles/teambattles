// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_material_field.dart';
import './tournament_update_response_applied.dart';
import './tournament_update_response_approval_status.dart';

/// auto generated
/// Tri-state result of a tournament edit.
class TournamentUpdateResponse implements Parsable {
    ///  `direct` - the tournament has never been approved, so the edit is live immediately. `pending` - the tournament has been approved before, so the edit was staged in `pendingChanges` and the approval status flipped to AWAITING_APPROVAL; it is NOT live and the tournament is off the public listing until staff re-approve. `noop` - the tournament has been approved before and every supplied value already matched the stored one, so nothing was staged and the approval status was left alone.
    TournamentUpdateResponseApplied? applied;
    ///  Present only when `applied` is `pending`, where it is always AWAITING_APPROVAL. Omitted otherwise, because the `direct` and `noop` arms leave the approval status untouched and echoing a pre-request snapshot would be a guess.
    TournamentUpdateResponseApprovalStatus? approvalStatus;
    ///  Present only when `applied` is `pending`. The material fields staged for re-approval, which is the merge of this request with any changes already pending.
    Iterable<TournamentMaterialField>? changedFields;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentUpdateResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentUpdateResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['applied'] = (node) => applied = node.getEnumValue<TournamentUpdateResponseApplied>((stringValue) => TournamentUpdateResponseApplied.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['approvalStatus'] = (node) => approvalStatus = node.getEnumValue<TournamentUpdateResponseApprovalStatus>((stringValue) => TournamentUpdateResponseApprovalStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['changedFields'] = (node) => changedFields = node.getCollectionOfEnumValues<TournamentMaterialField>((stringValue) => TournamentMaterialField.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<TournamentUpdateResponseApplied>('applied', applied, (e) => e?.value);
        writer.writeEnumValue<TournamentUpdateResponseApprovalStatus>('approvalStatus', approvalStatus, (e) => e?.value);
        writer.writeCollectionOfEnumValues<TournamentMaterialField>('changedFields', changedFields, (e) => e?.value);
        writer.writeStringValue('timestamp', timestamp);
    }
}
