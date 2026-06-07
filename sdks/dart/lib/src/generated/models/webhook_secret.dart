// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// One-time signing-secret reveal (create/rotate).
class WebhookSecret implements Parsable {
    ///  The endpoint id the secret belongs to.
    String? id;
    ///  First 8 chars of the new signing secret.
    String? secretPrefix;
    ///  Plaintext signing secret. Shown ONCE - store it now.
    String? signingSecret;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static WebhookSecret createFromDiscriminatorValue(ParseNode parseNode) {
        return WebhookSecret();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['secretPrefix'] = (node) => secretPrefix = node.getStringValue();
        deserializerMap['signingSecret'] = (node) => signingSecret = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeStringValue('secretPrefix', secretPrefix);
        writer.writeStringValue('signingSecret', signingSecret);
    }
}
