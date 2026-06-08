// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './ticket_summary_created_at.dart';
import './ticket_summary_priority.dart';
import './ticket_summary_status.dart';
import './ticket_summary_updated_at.dart';

/// auto generated
class TicketSummary implements Parsable {
    ///  The category property
    String? category;
    ///  The createdAt property
    TicketSummaryCreatedAt? createdAt;
    ///  The id property
    String? id;
    ///  The priority property
    TicketSummaryPriority? priority;
    ///  The status property
    TicketSummaryStatus? status;
    ///  The subject property
    String? subject;
    ///  The ticketNumber property
    int? ticketNumber;
    ///  The updatedAt property
    TicketSummaryUpdatedAt? updatedAt;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TicketSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return TicketSummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<TicketSummaryCreatedAt>(TicketSummaryCreatedAt.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['priority'] = (node) => priority = node.getEnumValue<TicketSummaryPriority>((stringValue) => TicketSummaryPriority.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['status'] = (node) => status = node.getEnumValue<TicketSummaryStatus>((stringValue) => TicketSummaryStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['subject'] = (node) => subject = node.getStringValue();
        deserializerMap['ticketNumber'] = (node) => ticketNumber = node.getIntValue();
        deserializerMap['updatedAt'] = (node) => updatedAt = node.getObjectValue<TicketSummaryUpdatedAt>(TicketSummaryUpdatedAt.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('category', category);
        writer.writeObjectValue<TicketSummaryCreatedAt>('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeEnumValue<TicketSummaryPriority>('priority', priority, (e) => e?.value);
        writer.writeEnumValue<TicketSummaryStatus>('status', status, (e) => e?.value);
        writer.writeStringValue('subject', subject);
        writer.writeIntValue('ticketNumber', ticketNumber);
        writer.writeObjectValue<TicketSummaryUpdatedAt>('updatedAt', updatedAt);
    }
}
