// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_match_rosters_response_accepted_team_id.dart';
import './game_roster_player.dart';

/// auto generated
/// Team rosters for a match, grouped by creator and accepted team.
class GameMatchRostersResponse implements Parsable {
    ///  Players on the accepted team (empty when unaccepted).
    Iterable<GameRosterPlayer>? acceptedRoster;
    ///  ID of the team that accepted the match, or null if unaccepted.
    GameMatchRostersResponseAcceptedTeamId? acceptedTeamId;
    ///  Players on the creator team.
    Iterable<GameRosterPlayer>? creatorRoster;
    ///  ID of the team that created the match.
    String? creatorTeamId;
    ///  Server response time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMatchRostersResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameMatchRostersResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['acceptedRoster'] = (node) => acceptedRoster = node.getCollectionOfObjectValues<GameRosterPlayer>(GameRosterPlayer.createFromDiscriminatorValue);
        deserializerMap['acceptedTeamId'] = (node) => acceptedTeamId = node.getObjectValue<GameMatchRostersResponseAcceptedTeamId>(GameMatchRostersResponseAcceptedTeamId.createFromDiscriminatorValue);
        deserializerMap['creatorRoster'] = (node) => creatorRoster = node.getCollectionOfObjectValues<GameRosterPlayer>(GameRosterPlayer.createFromDiscriminatorValue);
        deserializerMap['creatorTeamId'] = (node) => creatorTeamId = node.getStringValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<GameRosterPlayer>('acceptedRoster', acceptedRoster);
        writer.writeObjectValue<GameMatchRostersResponseAcceptedTeamId>('acceptedTeamId', acceptedTeamId);
        writer.writeCollectionOfObjectValues<GameRosterPlayer>('creatorRoster', creatorRoster);
        writer.writeStringValue('creatorTeamId', creatorTeamId);
        writer.writeStringValue('timestamp', timestamp);
    }
}
