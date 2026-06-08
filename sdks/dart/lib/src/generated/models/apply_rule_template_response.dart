// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ApplyRuleTemplateResponse implements Parsable {
    ///  The rulesId property
    String? rulesId;
    ///  The success property
    bool? success;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApplyRuleTemplateResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ApplyRuleTemplateResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['rulesId'] = (node) => rulesId = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('rulesId', rulesId);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
