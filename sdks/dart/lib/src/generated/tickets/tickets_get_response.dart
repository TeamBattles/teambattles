// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../models/ticket_summary.dart';
import './tickets_get_response_next_cursor.dart';

/// auto generated
class TicketsGetResponse implements Parsable {
    ///  The data property
    Iterable<TicketSummary>? data;
    ///  The hasMore property
    bool? hasMore;
    ///  The nextCursor property
    TicketsGetResponseNextCursor? nextCursor;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TicketsGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TicketsGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['data'] = (node) => data = node.getCollectionOfObjectValues<TicketSummary>(TicketSummary.createFromDiscriminatorValue);
        deserializerMap['hasMore'] = (node) => hasMore = node.getBoolValue();
        deserializerMap['nextCursor'] = (node) => nextCursor = node.getObjectValue<TicketsGetResponseNextCursor>(TicketsGetResponseNextCursor.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<TicketSummary>('data', data);
        writer.writeBoolValue('hasMore', value:hasMore);
        writer.writeObjectValue<TicketsGetResponseNextCursor>('nextCursor', nextCursor);
        writer.writeStringValue('timestamp', timestamp);
    }
}
