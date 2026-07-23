// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_roster_member_avatar_url.dart';

/// auto generated
/// One member of a participant's roster.
class TournamentRosterMember implements Parsable {
    ///  Avatar image URL.
    TournamentRosterMemberAvatarUrl? avatarUrl;
    ///  User ID.
    String? id;
    ///  Display name.
    String? name;
    ///  How the member joined the tournament roster.
    String? source;
    ///  Username.
    String? username;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentRosterMember createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentRosterMember();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<TournamentRosterMemberAvatarUrl>(TournamentRosterMemberAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['source'] = (node) => source = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TournamentRosterMemberAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeStringValue('id', id);
        writer.writeStringValue('name', name);
        writer.writeStringValue('source', source);
        writer.writeStringValue('username', username);
    }
}
