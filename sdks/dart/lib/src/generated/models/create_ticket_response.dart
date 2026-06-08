// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CreateTicketResponse implements Parsable {
    ///  The success property
    bool? success;
    ///  Created ticket ID.
    String? ticketId;
    ///  Human-facing sequential ticket number.
    int? ticketNumber;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateTicketResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateTicketResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['ticketId'] = (node) => ticketId = node.getStringValue();
        deserializerMap['ticketNumber'] = (node) => ticketNumber = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('ticketId', ticketId);
        writer.writeIntValue('ticketNumber', ticketNumber);
        writer.writeStringValue('timestamp', timestamp);
    }
}
