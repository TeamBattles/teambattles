// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_rank_upsert_body_game_id.dart';

/// auto generated
/// Upsert the API key owner's rank for one (gameId, mode) slot.
class GameRankUpsertBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Game definition ID to set the rank for (a playable game).
    GameRankUpsertBodyGameId? gameId;
    ///  Whether the player is in the Top 250 ladder.
    bool? isTop250;
    ///  Game mode / playlist the rank applies to (a valid playlist ID).
    String? mode;
    ///  Skill rating (integer, 0-100000).
    int? sr;
    ///  Top 250 ladder position (1-250); only meaningful when isTop250.
    int? top250Rank;
    ///  Current win streak count (0-99).
    int? winstreak;
    /// Instantiates a new [GameRankUpsertBody] and sets the default values.
    GameRankUpsertBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameRankUpsertBody createFromDiscriminatorValue(ParseNode parseNode) {
        return GameRankUpsertBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameId'] = (node) => gameId = node.getEnumValue<GameRankUpsertBodyGameId>((stringValue) => GameRankUpsertBodyGameId.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['isTop250'] = (node) => isTop250 = node.getBoolValue();
        deserializerMap['mode'] = (node) => mode = node.getStringValue();
        deserializerMap['sr'] = (node) => sr = node.getIntValue();
        deserializerMap['top250Rank'] = (node) => top250Rank = node.getIntValue();
        deserializerMap['winstreak'] = (node) => winstreak = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<GameRankUpsertBodyGameId>('gameId', gameId, (e) => e?.value);
        writer.writeBoolValue('isTop250', value:isTop250);
        writer.writeStringValue('mode', mode);
        writer.writeIntValue('sr', sr);
        writer.writeIntValue('top250Rank', top250Rank);
        writer.writeIntValue('winstreak', winstreak);
        writer.writeAdditionalData(additionalData);
    }
}
