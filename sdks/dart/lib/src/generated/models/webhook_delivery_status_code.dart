// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_delivery_status_code_member1.dart';

/// auto generated
/// Composed type wrapper for classes [int?], [WebhookDeliveryStatusCodeMember1]
class WebhookDeliveryStatusCode implements Parsable {
    ///  Composed type representation for type [int?]
    int? integer;
    ///  Composed type representation for type [WebhookDeliveryStatusCodeMember1]
    WebhookDeliveryStatusCodeMember1? webhookDeliveryStatusCodeMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookDeliveryStatusCode createFromDiscriminatorValue(ParseNode parseNode) {
        var result = WebhookDeliveryStatusCode();
        if(parseNode.getIntValue() != null) {
            result.integer = parseNode.getIntValue();
        }
        else {
            result.webhookDeliveryStatusCodeMember1 = WebhookDeliveryStatusCodeMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(webhookDeliveryStatusCodeMember1 != null){webhookDeliveryStatusCodeMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(integer != null) {
            writer.writeIntValue(null, integer);
        }
        else {
            writer.writeObjectValue<WebhookDeliveryStatusCodeMember1>(null, webhookDeliveryStatusCodeMember1);
        }
    }
}
