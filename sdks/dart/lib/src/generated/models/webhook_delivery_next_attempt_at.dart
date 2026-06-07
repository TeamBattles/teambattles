// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './webhook_delivery_next_attempt_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [double?], [WebhookDeliveryNextAttemptAtMember1]
class WebhookDeliveryNextAttemptAt implements Parsable {
    ///  Composed type representation for type [double?]
    double? double_;
    ///  Composed type representation for type [WebhookDeliveryNextAttemptAtMember1]
    WebhookDeliveryNextAttemptAtMember1? webhookDeliveryNextAttemptAtMember1;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookDeliveryNextAttemptAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = WebhookDeliveryNextAttemptAt();
        if(parseNode.getDoubleValue() != null) {
            result.double_ = parseNode.getDoubleValue();
        }
        else {
            result.webhookDeliveryNextAttemptAtMember1 = WebhookDeliveryNextAttemptAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(webhookDeliveryNextAttemptAtMember1 != null){webhookDeliveryNextAttemptAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<WebhookDeliveryNextAttemptAtMember1>(null, webhookDeliveryNextAttemptAtMember1);
        }
    }
}
