// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_score_confirmed_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [GameScoreConfirmedAtMember1], [String?]
class GameScoreConfirmedAt implements Parsable {
    ///  Composed type representation for type [GameScoreConfirmedAtMember1]
    GameScoreConfirmedAtMember1? gameScoreConfirmedAtMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameScoreConfirmedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = GameScoreConfirmedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.gameScoreConfirmedAtMember1 = GameScoreConfirmedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(gameScoreConfirmedAtMember1 != null){gameScoreConfirmedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(string_ != null) {
            writer.writeStringValue(null, string_);
        }
        else {
            writer.writeObjectValue<GameScoreConfirmedAtMember1>(null, gameScoreConfirmedAtMember1);
        }
    }
}
