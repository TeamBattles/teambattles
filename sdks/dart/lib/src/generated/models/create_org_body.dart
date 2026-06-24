// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Creates a new organization as the API key owner.
class CreateOrgBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Optional organization description.
    String? description;
    ///  Organization name.
    String? name;
    ///  Organization tag (short identifier).
    String? tag;
    /// Instantiates a new [CreateOrgBody] and sets the default values.
    CreateOrgBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static CreateOrgBody createFromDiscriminatorValue(ParseNode parseNode) {
        return CreateOrgBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['tag'] = (node) => tag = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('description', description);
        writer.writeStringValue('name', name);
        writer.writeStringValue('tag', tag);
        writer.writeAdditionalData(additionalData);
    }
}
