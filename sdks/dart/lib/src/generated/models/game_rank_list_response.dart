// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_rank.dart';

/// auto generated
/// The API key owner's game ranks.
class GameRankListResponse implements Parsable {
    ///  The count property
    int? count;
    ///  The gameRanks property
    Iterable<ApiGameRank>? gameRanks;
    ///  ISO 8601 response timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameRankListResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameRankListResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['gameRanks'] = (node) => gameRanks = node.getCollectionOfObjectValues<ApiGameRank>(ApiGameRank.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<ApiGameRank>('gameRanks', gameRanks);
        writer.writeStringValue('timestamp', timestamp);
    }
}
