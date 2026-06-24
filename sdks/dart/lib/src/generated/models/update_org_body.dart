// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_org_body_profile_visibility.dart';

/// auto generated
/// Fields to update on the organization. All optional.
class UpdateOrgBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The description property
    String? description;
    ///  The isPublic property
    bool? isPublic;
    ///  The name property
    String? name;
    ///  The profileVisibility property
    UpdateOrgBodyProfileVisibility? profileVisibility;
    ///  The tag property
    String? tag;
    /// Instantiates a new [UpdateOrgBody] and sets the default values.
    UpdateOrgBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateOrgBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateOrgBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['isPublic'] = (node) => isPublic = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['profileVisibility'] = (node) => profileVisibility = node.getEnumValue<UpdateOrgBodyProfileVisibility>((stringValue) => UpdateOrgBodyProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['tag'] = (node) => tag = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('description', description);
        writer.writeBoolValue('isPublic', value:isPublic);
        writer.writeStringValue('name', name);
        writer.writeEnumValue<UpdateOrgBodyProfileVisibility>('profileVisibility', profileVisibility, (e) => e?.value);
        writer.writeStringValue('tag', tag);
        writer.writeAdditionalData(additionalData);
    }
}
