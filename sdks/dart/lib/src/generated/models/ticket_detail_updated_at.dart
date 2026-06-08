// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './ticket_detail_updated_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TicketDetailUpdatedAtMember1]
class TicketDetailUpdatedAt implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TicketDetailUpdatedAtMember1]
    TicketDetailUpdatedAtMember1? ticketDetailUpdatedAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TicketDetailUpdatedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TicketDetailUpdatedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.ticketDetailUpdatedAtMember1 = TicketDetailUpdatedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(ticketDetailUpdatedAtMember1 != null){ticketDetailUpdatedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TicketDetailUpdatedAtMember1>(null, ticketDetailUpdatedAtMember1);
        }
    }
}
