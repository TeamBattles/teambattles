// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/webhook_delivery.dart';

/// auto generated
class DeliveriesGetResponse implements Parsable {
    ///  The continueCursor property
    String? continueCursor;
    ///  The isDone property
    bool? isDone;
    ///  The page property
    Iterable<WebhookDelivery>? page;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static DeliveriesGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return DeliveriesGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['continueCursor'] = (node) => continueCursor = node.getStringValue();
        deserializerMap['isDone'] = (node) => isDone = node.getBoolValue();
        deserializerMap['page'] = (node) => page = node.getCollectionOfObjectValues<WebhookDelivery>(WebhookDelivery.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('continueCursor', continueCursor);
        writer.writeBoolValue('isDone', value:isDone);
        writer.writeCollectionOfObjectValues<WebhookDelivery>('page', page);
    }
}
