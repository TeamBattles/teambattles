// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './ticket_summary_created_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [String?], [TicketSummaryCreatedAtMember1]
class TicketSummaryCreatedAt implements Parsable {
    ///  Composed type representation for type [String?]
    String? string_;
    ///  Composed type representation for type [TicketSummaryCreatedAtMember1]
    TicketSummaryCreatedAtMember1? ticketSummaryCreatedAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TicketSummaryCreatedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = TicketSummaryCreatedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.ticketSummaryCreatedAtMember1 = TicketSummaryCreatedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(ticketSummaryCreatedAtMember1 != null){ticketSummaryCreatedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<TicketSummaryCreatedAtMember1>(null, ticketSummaryCreatedAtMember1);
        }
    }
}
