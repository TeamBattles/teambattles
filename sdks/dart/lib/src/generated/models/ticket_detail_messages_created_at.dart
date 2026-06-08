// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './ticket_detail_messages_created_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TicketDetailMessagesCreatedAtMember1]
class TicketDetailMessagesCreatedAt implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TicketDetailMessagesCreatedAtMember1]
    TicketDetailMessagesCreatedAtMember1? ticketDetailMessagesCreatedAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TicketDetailMessagesCreatedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TicketDetailMessagesCreatedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.ticketDetailMessagesCreatedAtMember1 = TicketDetailMessagesCreatedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(ticketDetailMessagesCreatedAtMember1 != null){ticketDetailMessagesCreatedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TicketDetailMessagesCreatedAtMember1>(null, ticketDetailMessagesCreatedAtMember1);
        }
    }
}
