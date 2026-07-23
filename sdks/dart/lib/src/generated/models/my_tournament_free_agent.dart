// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_free_agent_status.dart';

/// auto generated
/// The caller's own free-agent pool row.
class MyTournamentFreeAgent implements Parsable {
    ///  Pool join time (epoch milliseconds).
    double? createdAt;
    ///  Free-agent row ID.
    String? freeAgentId;
    ///  Free-text note the caller supplied.
    String? note;
    ///  Participant who picked the caller up. Present only when PICKED_UP.
    String? pickedUpByParticipantId;
    ///  State of the caller's free-agent pool row.
    TournamentFreeAgentStatus? status;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentFreeAgent createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentFreeAgent();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['freeAgentId'] = (node) => freeAgentId = node.getStringValue();
        deserializerMap['note'] = (node) => note = node.getStringValue();
        deserializerMap['pickedUpByParticipantId'] = (node) => pickedUpByParticipantId = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentFreeAgentStatus>((stringValue) => TournamentFreeAgentStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('freeAgentId', freeAgentId);
        writer.writeStringValue('note', note);
        writer.writeStringValue('pickedUpByParticipantId', pickedUpByParticipantId);
        writer.writeEnumValue<TournamentFreeAgentStatus>('status', status, (e) => e?.value);
    }
}
