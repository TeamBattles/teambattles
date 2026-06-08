// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './chat_message_created_at.dart';
import './chat_message_reply_to_id.dart';
import './chat_message_sender_username.dart';

/// auto generated
class ChatMessage implements Parsable {
    ///  The content property
    String? content;
    ///  The createdAt property
    ChatMessageCreatedAt? createdAt;
    ///  The id property
    String? id;
    ///  The replyToId property
    ChatMessageReplyToId? replyToId;
    ///  The senderUserId property
    String? senderUserId;
    ///  The senderUsername property
    ChatMessageSenderUsername? senderUsername;
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
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<ChatMessageCreatedAt>(ChatMessageCreatedAt.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['replyToId'] = (node) => replyToId = node.getObjectValue<ChatMessageReplyToId>(ChatMessageReplyToId.createFromDiscriminatorValue);
        deserializerMap['senderUserId'] = (node) => senderUserId = node.getStringValue();
        deserializerMap['senderUsername'] = (node) => senderUsername = node.getObjectValue<ChatMessageSenderUsername>(ChatMessageSenderUsername.createFromDiscriminatorValue);
        deserializerMap['teamId'] = (node) => teamId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('content', content);
        writer.writeObjectValue<ChatMessageCreatedAt>('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ChatMessageReplyToId>('replyToId', replyToId);
        writer.writeStringValue('senderUserId', senderUserId);
        writer.writeObjectValue<ChatMessageSenderUsername>('senderUsername', senderUsername);
        writer.writeStringValue('teamId', teamId);
    }
}
