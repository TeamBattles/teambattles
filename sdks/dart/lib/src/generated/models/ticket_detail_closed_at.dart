// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './ticket_detail_closed_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TicketDetailClosedAtMember1]
class TicketDetailClosedAt implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TicketDetailClosedAtMember1]
    TicketDetailClosedAtMember1? ticketDetailClosedAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TicketDetailClosedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TicketDetailClosedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.ticketDetailClosedAtMember1 = TicketDetailClosedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(ticketDetailClosedAtMember1 != null){ticketDetailClosedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TicketDetailClosedAtMember1>(null, ticketDetailClosedAtMember1);
        }
    }
}
