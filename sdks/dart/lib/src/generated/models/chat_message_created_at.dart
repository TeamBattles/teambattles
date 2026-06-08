// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './chat_message_created_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ChatMessageCreatedAtMember1], [String?]
class ChatMessageCreatedAt implements Parsable {
    ///  Composed type representation for type [ChatMessageCreatedAtMember1]
    ChatMessageCreatedAtMember1? chatMessageCreatedAtMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ChatMessageCreatedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ChatMessageCreatedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.chatMessageCreatedAtMember1 = ChatMessageCreatedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(chatMessageCreatedAtMember1 != null){chatMessageCreatedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ChatMessageCreatedAtMember1>(null, chatMessageCreatedAtMember1);
        }
    }
}
