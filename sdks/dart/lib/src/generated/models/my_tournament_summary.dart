// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_status.dart';

/// auto generated
/// A tournament the API key owner can manage.
class MyTournamentSummary implements Parsable {
    ///  Platform review state, independent of `status`.
    String? approvalStatus;
    ///  user, org, or league.
    String? hostType;
    ///  Tournament ID.
    String? id;
    ///  Whether the caller holds tournament ADMIN authority. False for a tournament moderator, who is a manager but not an admin.
    bool? isAdmin;
    ///  Participant cap.
    int? maxParticipants;
    ///  Tournament display name.
    String? name;
    ///  Non-terminal AND awaiting organizer action on approval. Tournaments sort attention-first, then by most recently updated.
    bool? needsAttention;
    ///  Current number of participants.
    int? participantCount;
    ///  URL-friendly tournament identifier.
    String? slug;
    ///  Scheduled start (epoch milliseconds).
    double? startsAt;
    ///  Lifecycle status of a tournament.
    TournamentStatus? status;
    ///  Last update (epoch milliseconds).
    double? updatedAt;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentSummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['approvalStatus'] = (node) => approvalStatus = node.getStringValue();
        deserializerMap['hostType'] = (node) => hostType = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isAdmin'] = (node) => isAdmin = node.getBoolValue();
        deserializerMap['maxParticipants'] = (node) => maxParticipants = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['needsAttention'] = (node) => needsAttention = node.getBoolValue();
        deserializerMap['participantCount'] = (node) => participantCount = node.getIntValue();
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['startsAt'] = (node) => startsAt = node.getDoubleValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentStatus>((stringValue) => TournamentStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['updatedAt'] = (node) => updatedAt = node.getDoubleValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('approvalStatus', approvalStatus);
        writer.writeStringValue('hostType', hostType);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isAdmin', value:isAdmin);
        writer.writeIntValue('maxParticipants', maxParticipants);
        writer.writeStringValue('name', name);
        writer.writeBoolValue('needsAttention', value:needsAttention);
        writer.writeIntValue('participantCount', participantCount);
        writer.writeStringValue('slug', slug);
        writer.writeDoubleValue('startsAt', startsAt);
        writer.writeEnumValue<TournamentStatus>('status', status, (e) => e?.value);
        writer.writeDoubleValue('updatedAt', updatedAt);
    }
}
