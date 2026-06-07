// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_endpoint_last_delivered_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [double?], [WebhookEndpointLastDeliveredAtMember1]
class WebhookEndpointLastDeliveredAt implements Parsable {
    ///  Composed type representation for type [double?]
    double? double_;
    ///  Composed type representation for type [WebhookEndpointLastDeliveredAtMember1]
    WebhookEndpointLastDeliveredAtMember1? webhookEndpointLastDeliveredAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookEndpointLastDeliveredAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = WebhookEndpointLastDeliveredAt();
        if(parseNode.getDoubleValue() != null) {
            result.double_ = parseNode.getDoubleValue();
        }
        else {
            result.webhookEndpointLastDeliveredAtMember1 = WebhookEndpointLastDeliveredAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(webhookEndpointLastDeliveredAtMember1 != null){webhookEndpointLastDeliveredAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(double_ != null) {
            writer.writeDoubleValue(null, double_);
        }
        else {
            writer.writeObjectValue<WebhookEndpointLastDeliveredAtMember1>(null, webhookEndpointLastDeliveredAtMember1);
        }
    }
}
