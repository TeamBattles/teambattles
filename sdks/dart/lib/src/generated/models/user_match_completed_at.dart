// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './user_match_completed_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [UserMatchCompletedAtMember1]
class UserMatchCompletedAt implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [UserMatchCompletedAtMember1]
    UserMatchCompletedAtMember1? userMatchCompletedAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UserMatchCompletedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = UserMatchCompletedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.userMatchCompletedAtMember1 = UserMatchCompletedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(userMatchCompletedAtMember1 != null){userMatchCompletedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<UserMatchCompletedAtMember1>(null, userMatchCompletedAtMember1);
        }
    }
}
