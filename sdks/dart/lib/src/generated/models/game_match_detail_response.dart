// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_match_detail.dart';

/// auto generated
/// Envelope for GET /game/matches/{matchId}: the match plus a response timestamp.
class GameMatchDetailResponse implements Parsable {
    ///  Detailed match payload returned inside the game-developer match-detail response.
    GameMatchDetail? match;
    ///  Server response time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMatchDetailResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameMatchDetailResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['match'] = (node) => match = node.getObjectValue<GameMatchDetail>(GameMatchDetail.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<GameMatchDetail>('match', match);
        writer.writeStringValue('timestamp', timestamp);
    }
}
