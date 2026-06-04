// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './user_match_started_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [UserMatchStartedAtMember1]
class UserMatchStartedAt implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [UserMatchStartedAtMember1]
    UserMatchStartedAtMember1? userMatchStartedAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UserMatchStartedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = UserMatchStartedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.userMatchStartedAtMember1 = UserMatchStartedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(userMatchStartedAtMember1 != null){userMatchStartedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<UserMatchStartedAtMember1>(null, userMatchStartedAtMember1);
        }
    }
}
