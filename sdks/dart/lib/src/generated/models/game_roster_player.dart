// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_roster_player_name.dart';
import './game_roster_player_username.dart';

/// auto generated
/// A single player entry on a match roster.
class GameRosterPlayer implements Parsable {
    ///  Whether the player has checked in for the match.
    bool? isCheckedIn;
    ///  Player's display name, or null if unset.
    GameRosterPlayerName? name;
    ///  ID of the team the player belongs to.
    String? teamId;
    ///  Player's user ID.
    String? userId;
    ///  Player's username, or null if unset.
    GameRosterPlayerUsername? username;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameRosterPlayer createFromDiscriminatorValue(ParseNode parseNode) {
        return GameRosterPlayer();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['isCheckedIn'] = (node) => isCheckedIn = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getObjectValue<GameRosterPlayerName>(GameRosterPlayerName.createFromDiscriminatorValue);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        deserializerMap['username'] = (node) => username = node.getObjectValue<GameRosterPlayerUsername>(GameRosterPlayerUsername.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('isCheckedIn', value:isCheckedIn);
        writer.writeObjectValue<GameRosterPlayerName>('name', name);
        writer.writeStringValue('teamId', teamId);
        writer.writeStringValue('userId', userId);
        writer.writeObjectValue<GameRosterPlayerUsername>('username', username);
    }
}
