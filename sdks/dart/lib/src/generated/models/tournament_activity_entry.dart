// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_activity_actor.dart';
import './tournament_activity_entry_metadata.dart';

/// auto generated
/// One tournament activity log entry.
class TournamentActivityEntry implements Parsable {
    ///  Action identifier, e.g. registration_opened, participant_approved, invite_revoked. Open-ended: treat unrecognised values as informational rather than an error.
    String? action;
    ///  The acting user, or null when the user row no longer resolves.
    TournamentActivityActor? actor;
    ///  Log time (epoch milliseconds).
    double? createdAt;
    ///  Activity log row ID.
    String? id;
    ///  Action-specific detail. Shape varies by `action`.
    TournamentActivityEntryMetadata? metadata;
    ///  ID of the targeted row.
    String? targetId;
    ///  Kind of row the action targeted, when the action names one.
    String? targetType;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentActivityEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentActivityEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['action'] = (node) => action = node.getStringValue();
        deserializerMap['actor'] = (node) => actor = node.getObjectValue<TournamentActivityActor>(TournamentActivityActor.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['metadata'] = (node) => metadata = node.getObjectValue<TournamentActivityEntryMetadata>(TournamentActivityEntryMetadata.createFromDiscriminatorValue);
        deserializerMap['targetId'] = (node) => targetId = node.getStringValue();
        deserializerMap['targetType'] = (node) => targetType = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('action', action);
        writer.writeObjectValue<TournamentActivityActor>('actor', actor);
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<TournamentActivityEntryMetadata>('metadata', metadata);
        writer.writeStringValue('targetId', targetId);
        writer.writeStringValue('targetType', targetType);
    }
}
