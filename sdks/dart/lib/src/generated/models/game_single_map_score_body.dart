// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_single_map_score_body_player_stats.dart';

/// auto generated
/// Request body for submitting a single map's score (mapIndex comes from the path).
class GameSingleMapScoreBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Score for the creator team (integer, 0-1000).
    int? creatorTeamScore;
    ///  Identifier of the map that was played.
    String? mapId;
    ///  Score for the opponent (accepted) team (integer, 0-1000).
    int? opponentTeamScore;
    ///  Optional per-player stats keyed by user ID.
    GameSingleMapScoreBodyPlayerStats? playerStats;
    ///  Optional storage IDs for screenshots uploaded via POST /uploads/image-url. Preferred over screenshotUrls: each is validated (size, content-type, ownership) and resolved to a URL server-side.
    Iterable<String>? screenshotStorageIds;
    ///  Optional external screenshot URLs supporting the reported score. Each must be a public https URL. Prefer screenshotStorageIds (validated blobs) where possible.
    Iterable<String>? screenshotUrls;
    /// Instantiates a new [GameSingleMapScoreBody] and sets the default values.
    GameSingleMapScoreBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameSingleMapScoreBody createFromDiscriminatorValue(ParseNode parseNode) {
        return GameSingleMapScoreBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['creatorTeamScore'] = (node) => creatorTeamScore = node.getIntValue();
        deserializerMap['mapId'] = (node) => mapId = node.getStringValue();
        deserializerMap['opponentTeamScore'] = (node) => opponentTeamScore = node.getIntValue();
        deserializerMap['playerStats'] = (node) => playerStats = node.getObjectValue<GameSingleMapScoreBodyPlayerStats>(GameSingleMapScoreBodyPlayerStats.createFromDiscriminatorValue);
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
        writer.writeIntValue('opponentTeamScore', opponentTeamScore);
        writer.writeObjectValue<GameSingleMapScoreBodyPlayerStats>('playerStats', playerStats);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotStorageIds', screenshotStorageIds);
        writer.writeCollectionOfPrimitiveValues<String?>('screenshotUrls', screenshotUrls);
        writer.writeAdditionalData(additionalData);
    }
}
