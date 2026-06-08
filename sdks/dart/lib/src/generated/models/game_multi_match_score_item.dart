// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_multi_match_score_item_player_stats.dart';

/// auto generated
/// One match's single map score within a multi-match batch submission.
class GameMultiMatchScoreItem implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Score for the creator team (integer, 0-1000).
    int? creatorTeamScore;
    ///  Identifier of the map that was played.
    String? mapId;
    ///  Zero-based index of the map within the series.
    int? mapIndex;
    ///  ID of the match this map score belongs to.
    String? matchId;
    ///  Score for the opponent (accepted) team (integer, 0-1000).
    int? opponentTeamScore;
    ///  Optional per-player stats keyed by user ID.
    GameMultiMatchScoreItemPlayerStats? playerStats;
    ///  Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
    Iterable<String>? screenshotStorageIds;
    ///  Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
    Iterable<String>? screenshotUrls;
    /// Instantiates a new [GameMultiMatchScoreItem] and sets the default values.
    GameMultiMatchScoreItem() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMultiMatchScoreItem createFromDiscriminatorValue(ParseNode parseNode) {
        return GameMultiMatchScoreItem();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getIntValue();
        deserializerMap['mapId'] = (node) => mapId = node.getStringValue();
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['matchId'] = (node) => matchId = node.getStringValue();
        deserializerMap['opponentTeamScore'] = (node) => opponentTeamScore = node.getIntValue();
        deserializerMap['playerStats'] = (node) => playerStats = node.getObjectValue<GameMultiMatchScoreItemPlayerStats>(GameMultiMatchScoreItemPlayerStats.createFromDiscriminatorValue);
        deserializerMap['screenshotStorageIds'] = (node) => screenshotStorageIds = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['screenshotUrls'] = (node) => screenshotUrls = node.getCollectionOfPrimitiveValues<String>();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('creatorTeamScore', creatorTeamScore);
        writer.writeStringValue('mapId', mapId);
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeStringValue('matchId', matchId);
        writer.writeIntValue('opponentTeamScore', opponentTeamScore);
        writer.writeObjectValue<GameMultiMatchScoreItemPlayerStats>('playerStats', playerStats);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotStorageIds', screenshotStorageIds);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotUrls', screenshotUrls);
        writer.writeAdditionalData(additionalData);
    }
}
