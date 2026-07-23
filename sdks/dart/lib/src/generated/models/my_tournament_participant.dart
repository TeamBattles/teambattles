// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_participant_status.dart';

/// auto generated
/// One of the caller's teams entered in this tournament.
class MyTournamentParticipant implements Parsable {
    ///  Whether the caller may act on this entry - withdraw, check in, or edit its roster. False for a team the caller is an ordinary member of, which still appears here so a client can show it without offering actions that would 403.
    bool? canManage;
    ///  Check-in time (epoch milliseconds). Absent until the team checks in.
    double? checkedInAt;
    ///  Placement persisted at finalization. Present only once the tournament ends.
    int? finalPlacement;
    ///  Participant ID. Required by the withdraw and check-in endpoints, and by the organizer roster endpoints.
    String? participantId;
    ///  Entry time (epoch milliseconds).
    double? registeredAt;
    ///  Assigned seed, once seeding has run.
    int? seed;
    ///  State of a team's entry. PENDING is an unreviewed application; REMOVED and DISQUALIFIED are organizer actions, WITHDRAWN is the team's own.
    TournamentParticipantStatus? status;
    ///  Team avatar URL.
    String? teamAvatarUrl;
    ///  Team ID.
    String? teamId;
    ///  Team display name.
    String? teamName;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentParticipant createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentParticipant();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['canManage'] = (node) => canManage = node.getBoolValue();
        deserializerMap['checkedInAt'] = (node) => checkedInAt = node.getDoubleValue();
        deserializerMap['finalPlacement'] = (node) => finalPlacement = node.getIntValue();
        deserializerMap['participantId'] = (node) => participantId = node.getStringValue();
        deserializerMap['registeredAt'] = (node) => registeredAt = node.getDoubleValue();
        deserializerMap['seed'] = (node) => seed = node.getIntValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentParticipantStatus>((stringValue) => TournamentParticipantStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamAvatarUrl'] = (node) => teamAvatarUrl = node.getStringValue();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['teamName'] = (node) => teamName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('canManage', value:canManage);
        writer.writeDoubleValue('checkedInAt', checkedInAt);
        writer.writeIntValue('finalPlacement', finalPlacement);
        writer.writeStringValue('participantId', participantId);
        writer.writeDoubleValue('registeredAt', registeredAt);
        writer.writeIntValue('seed', seed);
        writer.writeEnumValue<TournamentParticipantStatus>('status', status, (e) => e?.value);
        writer.writeStringValue('teamAvatarUrl', teamAvatarUrl);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('teamName', teamName);
    }
}
