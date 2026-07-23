// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_invite_status.dart';
import './tournament_invite_team_avatar_url.dart';

/// auto generated
/// A team invite issued by the organizer.
class TournamentInvite implements Parsable {
    ///  Invite time (epoch milliseconds).
    double? createdAt;
    ///  Invite ID.
    String? id;
    ///  Organizer who sent the invite.
    String? invitedByUserId;
    ///  Response time (epoch milliseconds). Absent while PENDING.
    double? respondedAt;
    ///  State of a tournament team invite.
    TournamentInviteStatus? status;
    ///  Invited team's avatar URL.
    TournamentInviteTeamAvatarUrl? teamAvatarUrl;
    ///  Invited team's ID.
    String? teamId;
    ///  Invited team's display name.
    String? teamName;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentInvite createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentInvite();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['invitedByUserId'] = (node) => invitedByUserId = node.getStringValue();
        deserializerMap['respondedAt'] = (node) => respondedAt = node.getDoubleValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentInviteStatus>((stringValue) => TournamentInviteStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamAvatarUrl'] = (node) => teamAvatarUrl = node.getObjectValue<TournamentInviteTeamAvatarUrl>(TournamentInviteTeamAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['teamName'] = (node) => teamName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeStringValue('invitedByUserId', invitedByUserId);
        writer.writeDoubleValue('respondedAt', respondedAt);
        writer.writeEnumValue<TournamentInviteStatus>('status', status, (e) => e?.value);
        writer.writeObjectValue<TournamentInviteTeamAvatarUrl>('teamAvatarUrl', teamAvatarUrl);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('teamName', teamName);
    }
}
