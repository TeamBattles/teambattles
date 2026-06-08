// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './ticket_detail_closed_at.dart';
import './ticket_detail_created_at.dart';
import './ticket_detail_messages.dart';
import './ticket_detail_priority.dart';
import './ticket_detail_resolved_at.dart';
import './ticket_detail_status.dart';
import './ticket_detail_updated_at.dart';

/// auto generated
class TicketDetail implements Parsable {
    ///  The category property
    String? category;
    ///  The closedAt property
    TicketDetailClosedAt? closedAt;
    ///  The createdAt property
    TicketDetailCreatedAt? createdAt;
    ///  The description property
    String? description;
    ///  The id property
    String? id;
    ///  The messages property
    Iterable<TicketDetailMessages>? messages;
    ///  The priority property
    TicketDetailPriority? priority;
    ///  The resolvedAt property
    TicketDetailResolvedAt? resolvedAt;
    ///  The status property
    TicketDetailStatus? status;
    ///  The subject property
    String? subject;
    ///  The ticketNumber property
    int? ticketNumber;
    ///  The timestamp property
    String? timestamp;
    ///  The updatedAt property
    TicketDetailUpdatedAt? updatedAt;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TicketDetail createFromDiscriminatorValue(ParseNode parseNode) {
        return TicketDetail();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['category'] = (node) => category = node.getStringValue();
        deserializerMap['closedAt'] = (node) => closedAt = node.getObjectValue<TicketDetailClosedAt>(TicketDetailClosedAt.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<TicketDetailCreatedAt>(TicketDetailCreatedAt.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['messages'] = (node) => messages = node.getCollectionOfObjectValues<TicketDetailMessages>(TicketDetailMessages.createFromDiscriminatorValue);
        deserializerMap['priority'] = (node) => priority = node.getEnumValue<TicketDetailPriority>((stringValue) => TicketDetailPriority.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['resolvedAt'] = (node) => resolvedAt = node.getObjectValue<TicketDetailResolvedAt>(TicketDetailResolvedAt.createFromDiscriminatorValue);
        deserializerMap['status'] = (node) => status = node.getEnumValue<TicketDetailStatus>((stringValue) => TicketDetailStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['subject'] = (node) => subject = node.getStringValue();
        deserializerMap['ticketNumber'] = (node) => ticketNumber = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['updatedAt'] = (node) => updatedAt = node.getObjectValue<TicketDetailUpdatedAt>(TicketDetailUpdatedAt.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('category', category);
        writer.writeObjectValue<TicketDetailClosedAt>('closedAt', closedAt);
        writer.writeObjectValue<TicketDetailCreatedAt>('createdAt', createdAt);
        writer.writeStringValue('description', description);
        writer.writeStringValue('id', id);
        writer.writeCollectionOfObjectValues<TicketDetailMessages>('messages', messages);
        writer.writeEnumValue<TicketDetailPriority>('priority', priority, (e) => e?.value);
        writer.writeObjectValue<TicketDetailResolvedAt>('resolvedAt', resolvedAt);
        writer.writeEnumValue<TicketDetailStatus>('status', status, (e) => e?.value);
        writer.writeStringValue('subject', subject);
        writer.writeIntValue('ticketNumber', ticketNumber);
        writer.writeStringValue('timestamp', timestamp);
        writer.writeObjectValue<TicketDetailUpdatedAt>('updatedAt', updatedAt);
    }
}
