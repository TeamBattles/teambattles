// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_participant_team_avatar_url.dart';
import './tournament_roster_member.dart';

/// auto generated
/// A team entered in a tournament.
class TournamentParticipant implements Parsable {
    ///  Check-in timestamp (epoch milliseconds).
    double? checkedInAt;
    ///  Placement persisted at finalization. Present only once the tournament ends.
    int? finalPlacement;
    ///  Participant ID.
    String? id;
    ///  Tournament roster.
    Iterable<TournamentRosterMember>? roster;
    ///  Assigned seed, if seeding has run.
    int? seed;
    ///  PENDING, APPROVED, DENIED, WITHDRAWN, or DISQUALIFIED.
    String? status;
    ///  Team avatar URL.
    TournamentParticipantTeamAvatarUrl? teamAvatarUrl;
    ///  Team ID.
    String? teamId;
    ///  Team display name.
    String? teamName;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentParticipant createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentParticipant();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['checkedInAt'] = (node) => checkedInAt = node.getDoubleValue();
        deserializerMap['finalPlacement'] = (node) => finalPlacement = node.getIntValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['roster'] = (node) => roster = node.getCollectionOfObjectValues<TournamentRosterMember>(TournamentRosterMember.createFromDiscriminatorValue);
        deserializerMap['seed'] = (node) => seed = node.getIntValue();
        deserializerMap['status'] = (node) => status = node.getStringValue();
        deserializerMap['teamAvatarUrl'] = (node) => teamAvatarUrl = node.getObjectValue<TournamentParticipantTeamAvatarUrl>(TournamentParticipantTeamAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['teamName'] = (node) => teamName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('checkedInAt', checkedInAt);
        writer.writeIntValue('finalPlacement', finalPlacement);
        writer.writeStringValue('id', id);
        writer.writeCollectionOfObjectValues<TournamentRosterMember>('roster', roster);
        writer.writeIntValue('seed', seed);
        writer.writeStringValue('status', status);
        writer.writeObjectValue<TournamentParticipantTeamAvatarUrl>('teamAvatarUrl', teamAvatarUrl);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('teamName', teamName);
    }
}
