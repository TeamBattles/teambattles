// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Outcome of a single test.ping delivery.
class WebhookTestResult implements Parsable {
    ///  Whether the test.ping returned a 2xx. The raw status code and error are not echoed; read the delivery log for details.
    bool? delivered;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookTestResult createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookTestResult();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['delivered'] = (node) => delivered = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('delivered', value:delivered);
    }
}
