// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class CreateOrgResponse implements Parsable {
    ///  The created organization ID.
    String? id;
    ///  The created organization slug.
    String? slug;
    ///  The success property
    bool? success;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateOrgResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateOrgResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeStringValue('slug', slug);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
