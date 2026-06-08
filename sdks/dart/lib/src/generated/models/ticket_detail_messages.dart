// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './ticket_detail_messages_created_at.dart';

/// auto generated
class TicketDetailMessages implements Parsable {
    ///  The content property
    String? content;
    ///  The createdAt property
    TicketDetailMessagesCreatedAt? createdAt;
    ///  The id property
    String? id;
    ///  The isOwnMessage property
    bool? isOwnMessage;
    ///  The isSystem property
    bool? isSystem;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TicketDetailMessages createFromDiscriminatorValue(ParseNode parseNode) {
        return TicketDetailMessages();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['content'] = (node) => content = node.getStringValue();
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<TicketDetailMessagesCreatedAt>(TicketDetailMessagesCreatedAt.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isOwnMessage'] = (node) => isOwnMessage = node.getBoolValue();
        deserializerMap['isSystem'] = (node) => isSystem = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('content', content);
        writer.writeObjectValue<TicketDetailMessagesCreatedAt>('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isOwnMessage', value:isOwnMessage);
        writer.writeBoolValue('isSystem', value:isSystem);
    }
}
