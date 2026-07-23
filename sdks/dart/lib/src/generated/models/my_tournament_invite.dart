// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_invite_status.dart';

/// auto generated
/// An organizer invite addressed to a team the caller may act for. Only invites for ACTABLE teams appear - an invite to a team the caller merely belongs to is the captain's to answer.
class MyTournamentInvite implements Parsable {
    ///  Invite time (epoch milliseconds).
    double? createdAt;
    ///  Organizer who sent the invite.
    String? invitedByUserId;
    ///  Invite ID. Required by the invite-response endpoint.
    String? inviteId;
    ///  Response time (epoch milliseconds). Absent while PENDING.
    double? respondedAt;
    ///  State of a tournament team invite.
    TournamentInviteStatus? status;
    ///  Invited team's ID.
    String? teamId;
    ///  Invited team's display name.
    String? teamName;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentInvite createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentInvite();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['invitedByUserId'] = (node) => invitedByUserId = node.getStringValue();
        deserializerMap['inviteId'] = (node) => inviteId = node.getStringValue();
        deserializerMap['respondedAt'] = (node) => respondedAt = node.getDoubleValue();
        deserializerMap['status'] = (node) => status = node.getEnumValue<TournamentInviteStatus>((stringValue) => TournamentInviteStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['teamName'] = (node) => teamName = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('invitedByUserId', invitedByUserId);
        writer.writeStringValue('inviteId', inviteId);
        writer.writeDoubleValue('respondedAt', respondedAt);
        writer.writeEnumValue<TournamentInviteStatus>('status', status, (e) => e?.value);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('teamName', teamName);
    }
}
