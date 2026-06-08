// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_rank_source.dart';
import './api_game_rank_sr.dart';
import './api_game_rank_top250_rank.dart';

/// auto generated
/// API-safe game rank entry for the API key owner.
class ApiGameRank implements Parsable {
    ///  When the rank was first recorded.
    String? createdAt;
    ///  Game definition ID this rank belongs to.
    String? gameId;
    ///  Game rank row ID.
    String? id;
    ///  Whether the player is in the Top 250 ladder.
    bool? isTop250;
    ///  Game mode / playlist the rank is tracked for.
    String? mode;
    ///  Origin of the rank: manual entry or an API push.
    ApiGameRankSource? source;
    ///  Skill rating, when set.
    ApiGameRankSr? sr;
    ///  Top 250 ladder position (1-250), when applicable.
    ApiGameRankTop250Rank? top250Rank;
    ///  When the rank was last updated.
    String? updatedAt;
    ///  Current win streak count.
    int? winstreak;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameRank createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiGameRank();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['createdAt'] = (node) => createdAt = node.getStringValue();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isTop250'] = (node) => isTop250 = node.getBoolValue();
        deserializerMap['mode'] = (node) => mode = node.getStringValue();
        deserializerMap['source'] = (node) => source = node.getEnumValue<ApiGameRankSource>((stringValue) => ApiGameRankSource.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['sr'] = (node) => sr = node.getObjectValue<ApiGameRankSr>(ApiGameRankSr.createFromDiscriminatorValue);
        deserializerMap['top250Rank'] = (node) => top250Rank = node.getObjectValue<ApiGameRankTop250Rank>(ApiGameRankTop250Rank.createFromDiscriminatorValue);
        deserializerMap['updatedAt'] = (node) => updatedAt = node.getStringValue();
        deserializerMap['winstreak'] = (node) => winstreak = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('createdAt', createdAt);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isTop250', value:isTop250);
        writer.writeStringValue('mode', mode);
        writer.writeEnumValue<ApiGameRankSource>('source', source, (e) => e?.value);
        writer.writeObjectValue<ApiGameRankSr>('sr', sr);
        writer.writeObjectValue<ApiGameRankTop250Rank>('top250Rank', top250Rank);
        writer.writeStringValue('updatedAt', updatedAt);
        writer.writeIntValue('winstreak', winstreak);
    }
}
