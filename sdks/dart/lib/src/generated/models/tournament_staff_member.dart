// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_staff_member_avatar_url.dart';
import './tournament_staff_role.dart';

/// auto generated
/// One tournament staff assignment.
class TournamentStaffMember implements Parsable {
    ///  Avatar image URL.
    TournamentStaffMemberAvatarUrl? avatarUrl;
    ///  Time the row was added (epoch milliseconds).
    double? createdAt;
    ///  Staff row ID.
    String? id;
    ///  Display name.
    String? name;
    ///  Tournament staff role.
    TournamentStaffRole? role;
    ///  Staff member's user ID.
    String? userId;
    ///  Username.
    String? username;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentStaffMember createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentStaffMember();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<TournamentStaffMemberAvatarUrl>(TournamentStaffMemberAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getDoubleValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['role'] = (node) => role = node.getEnumValue<TournamentStaffRole>((stringValue) => TournamentStaffRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TournamentStaffMemberAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeDoubleValue('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeStringValue('name', name);
        writer.writeEnumValue<TournamentStaffRole>('role', role, (e) => e?.value);
        writer.writeStringValue('userId', userId);
        writer.writeStringValue('username', username);
    }
}
