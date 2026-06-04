// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_map_score_input_player_stats.dart';

/// auto generated
/// One map's score within a batch submission.
class GameMapScoreInput implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Score for the creator team (non-negative).
    double? creatorTeamScore;
    ///  Identifier of the map that was played.
    String? mapId;
    ///  Zero-based index of the map within the series.
    int? mapIndex;
    ///  Score for the opponent (accepted) team (non-negative).
    double? opponentTeamScore;
    ///  Optional per-player stats keyed by user ID.
    GameMapScoreInputPlayerStats? playerStats;
    ///  Optional screenshot URLs supporting the reported score.
    Iterable<String>? screenshotUrls;
    /// Instantiates a new [GameMapScoreInput] and sets the default values.
    GameMapScoreInput() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMapScoreInput createFromDiscriminatorValue(ParseNode parseNode) {
        return GameMapScoreInput();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getDoubleValue();
        deserializerMap['mapId'] = (node) => mapId = node.getStringValue();
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['opponentTeamScore'] = (node) => opponentTeamScore = node.getDoubleValue();
        deserializerMap['playerStats'] = (node) => playerStats = node.getObjectValue<GameMapScoreInputPlayerStats>(GameMapScoreInputPlayerStats.createFromDiscriminatorValue);
        deserializerMap['screenshotUrls'] = (node) => screenshotUrls = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('creatorTeamScore', creatorTeamScore);
        writer.writeStringValue('mapId', mapId);
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeDoubleValue('opponentTeamScore', opponentTeamScore);
        writer.writeObjectValue<GameMapScoreInputPlayerStats>('playerStats', playerStats);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotUrls', screenshotUrls);
        writer.writeAdditionalData(additionalData);
    }
}
