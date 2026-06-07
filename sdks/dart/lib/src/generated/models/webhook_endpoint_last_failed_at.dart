// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_endpoint_last_failed_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [double?], [WebhookEndpointLastFailedAtMember1]
class WebhookEndpointLastFailedAt implements Parsable {
    ///  Composed type representation for type [double?]
    double? double_;
    ///  Composed type representation for type [WebhookEndpointLastFailedAtMember1]
    WebhookEndpointLastFailedAtMember1? webhookEndpointLastFailedAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookEndpointLastFailedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = WebhookEndpointLastFailedAt();
        if(parseNode.getDoubleValue() != null) {
            result.double_ = parseNode.getDoubleValue();
        }
        else {
            result.webhookEndpointLastFailedAtMember1 = WebhookEndpointLastFailedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(webhookEndpointLastFailedAtMember1 != null){webhookEndpointLastFailedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<WebhookEndpointLastFailedAtMember1>(null, webhookEndpointLastFailedAtMember1);
        }
    }
}
