// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/chat_message.dart';
import './chat_get_response_next_cursor.dart';

/// auto generated
class ChatGetResponse implements Parsable {
    ///  The data property
    Iterable<ChatMessage>? data;
    ///  The hasMore property
    bool? hasMore;
    ///  The nextCursor property
    ChatGetResponseNextCursor? nextCursor;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ChatGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ChatGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['data'] = (node) => data = node.getCollectionOfObjectValues<ChatMessage>(ChatMessage.createFromDiscriminatorValue);
        deserializerMap['hasMore'] = (node) => hasMore = node.getBoolValue();
        deserializerMap['nextCursor'] = (node) => nextCursor = node.getObjectValue<ChatGetResponseNextCursor>(ChatGetResponseNextCursor.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ChatMessage>('data', data);
        writer.writeBoolValue('hasMore', value:hasMore);
        writer.writeObjectValue<ChatGetResponseNextCursor>('nextCursor', nextCursor);
        writer.writeStringValue('timestamp', timestamp);
    }
}
