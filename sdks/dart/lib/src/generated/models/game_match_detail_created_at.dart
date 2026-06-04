// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_match_detail_created_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [GameMatchDetailCreatedAtMember1], [String?]
class GameMatchDetailCreatedAt implements Parsable {
    ///  Composed type representation for type [GameMatchDetailCreatedAtMember1]
    GameMatchDetailCreatedAtMember1? gameMatchDetailCreatedAtMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameMatchDetailCreatedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = GameMatchDetailCreatedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.gameMatchDetailCreatedAtMember1 = GameMatchDetailCreatedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(gameMatchDetailCreatedAtMember1 != null){gameMatchDetailCreatedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<GameMatchDetailCreatedAtMember1>(null, gameMatchDetailCreatedAtMember1);
        }
    }
}
