// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_match_detail_started_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [GameMatchDetailStartedAtMember1], [String?]
class GameMatchDetailStartedAt implements Parsable {
    ///  Composed type representation for type [GameMatchDetailStartedAtMember1]
    GameMatchDetailStartedAtMember1? gameMatchDetailStartedAtMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMatchDetailStartedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = GameMatchDetailStartedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.gameMatchDetailStartedAtMember1 = GameMatchDetailStartedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(gameMatchDetailStartedAtMember1 != null){gameMatchDetailStartedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<GameMatchDetailStartedAtMember1>(null, gameMatchDetailStartedAtMember1);
        }
    }
}
