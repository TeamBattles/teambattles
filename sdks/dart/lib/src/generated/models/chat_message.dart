// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ChatMessage implements Parsable {
    ///  The content property
    String? content;
    ///  The createdAt property
    String? createdAt;
    ///  The id property
    String? id;
    ///  The replyToId property
    String? replyToId;
    ///  The senderUserId property
    String? senderUserId;
    ///  The senderUsername property
    String? senderUsername;
    ///  The teamId property
    String? teamId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ChatMessage createFromDiscriminatorValue(ParseNode parseNode) {
        return ChatMessage();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['content'] = (node) => content = node.getStringValue();
        deserializerMap['createdAt'] = (node) => createdAt = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['replyToId'] = (node) => replyToId = node.getStringValue();
        deserializerMap['senderUserId'] = (node) => senderUserId = node.getStringValue();
        deserializerMap['senderUsername'] = (node) => senderUsername = node.getStringValue();
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('content', content);
        writer.writeStringValue('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeStringValue('replyToId', replyToId);
        writer.writeStringValue('senderUserId', senderUserId);
        writer.writeStringValue('senderUsername', senderUsername);
        writer.writeStringValue('teamId', teamId);
    }
}
