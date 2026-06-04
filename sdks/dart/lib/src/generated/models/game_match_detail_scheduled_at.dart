// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_match_detail_scheduled_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [GameMatchDetailScheduledAtMember1], [String?]
class GameMatchDetailScheduledAt implements Parsable {
    ///  Composed type representation for type [GameMatchDetailScheduledAtMember1]
    GameMatchDetailScheduledAtMember1? gameMatchDetailScheduledAtMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMatchDetailScheduledAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = GameMatchDetailScheduledAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.gameMatchDetailScheduledAtMember1 = GameMatchDetailScheduledAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(gameMatchDetailScheduledAtMember1 != null){gameMatchDetailScheduledAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<GameMatchDetailScheduledAtMember1>(null, gameMatchDetailScheduledAtMember1);
        }
    }
}
