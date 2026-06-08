// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './chat_message_reply_to_id_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ChatMessageReplyToIdMember1], [String?]
class ChatMessageReplyToId implements Parsable {
    ///  Composed type representation for type [ChatMessageReplyToIdMember1]
    ChatMessageReplyToIdMember1? chatMessageReplyToIdMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ChatMessageReplyToId createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ChatMessageReplyToId();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.chatMessageReplyToIdMember1 = ChatMessageReplyToIdMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(chatMessageReplyToIdMember1 != null){chatMessageReplyToIdMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ChatMessageReplyToIdMember1>(null, chatMessageReplyToIdMember1);
        }
    }
}
