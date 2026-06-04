// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_score_confirmed_at.dart';
import './game_score_submitted_at.dart';

/// auto generated
/// A single map score as returned when reading scores.
class GameScore implements Parsable {
    ///  When the score was confirmed (ISO 8601).
    GameScoreConfirmedAt? confirmedAt;
    ///  Score for the creator team.
    int? creatorTeamScore;
    ///  Identifier of the map that was played.
    String? mapId;
    ///  Zero-based index of the map within the series.
    int? mapIndex;
    ///  Score for the opponent (accepted) team.
    int? opponentTeamScore;
    ///  Per-player stats keyed by user ID, or null when none recorded.
    UntypedNode? playerStats;
    ///  Confirmation state: "CONFIRMED" or "PENDING".
    String? scoreStatus;
    ///  When the score was submitted (ISO 8601).
    GameScoreSubmittedAt? submittedAt;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameScore createFromDiscriminatorValue(ParseNode parseNode) {
        return GameScore();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['confirmedAt'] = (node) => confirmedAt = node.getObjectValue<GameScoreConfirmedAt>(GameScoreConfirmedAt.createFromDiscriminatorValue);
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getIntValue();
        deserializerMap['mapId'] = (node) => mapId = node.getStringValue();
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['opponentTeamScore'] = (node) => opponentTeamScore = node.getIntValue();
        deserializerMap['playerStats'] = (node) => playerStats = node.getObjectValue<UntypedNode>(UntypedNode.createFromDiscriminatorValue);
        deserializerMap['scoreStatus'] = (node) => scoreStatus = node.getStringValue();
        deserializerMap['submittedAt'] = (node) => submittedAt = node.getObjectValue<GameScoreSubmittedAt>(GameScoreSubmittedAt.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<GameScoreConfirmedAt>('confirmedAt', confirmedAt);
        writer.writeIntValue('creatorTeamScore', creatorTeamScore);
        writer.writeStringValue('mapId', mapId);
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeIntValue('opponentTeamScore', opponentTeamScore);
        writer.writeObjectValue<UntypedNode>('playerStats', playerStats);
        writer.writeStringValue('scoreStatus', scoreStatus);
        writer.writeObjectValue<GameScoreSubmittedAt>('submittedAt', submittedAt);
    }
}
