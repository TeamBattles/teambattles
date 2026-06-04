// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_player_stats_body_player_stats.dart';

/// auto generated
/// Request body for submitting or updating player stats for an existing map score.
class GamePlayerStatsBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Zero-based index of the map whose stats are being updated.
    int? mapIndex;
    ///  Per-player stats keyed by user ID. The map score must already exist.
    GamePlayerStatsBodyPlayerStats? playerStats;
    /// Instantiates a new [GamePlayerStatsBody] and sets the default values.
    GamePlayerStatsBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GamePlayerStatsBody createFromDiscriminatorValue(ParseNode parseNode) {
        return GamePlayerStatsBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['playerStats'] = (node) => playerStats = node.getObjectValue<GamePlayerStatsBodyPlayerStats>(GamePlayerStatsBodyPlayerStats.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeObjectValue<GamePlayerStatsBodyPlayerStats>('playerStats', playerStats);
        writer.writeAdditionalData(additionalData);
    }
}
