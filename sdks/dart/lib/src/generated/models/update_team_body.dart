// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_team_body_profile_visibility.dart';
import './update_team_body_region.dart';

/// auto generated
/// Fields to update on the team. All optional.
class UpdateTeamBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The description property
    String? description;
    ///  The name property
    String? name;
    ///  The platform property
    String? platform;
    ///  The profileVisibility property
    UpdateTeamBodyProfileVisibility? profileVisibility;
    ///  The region property
    UpdateTeamBodyRegion? region;
    ///  The tag property
    String? tag;
    /// Instantiates a new [UpdateTeamBody] and sets the default values.
    UpdateTeamBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateTeamBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateTeamBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['platform'] = (node) => platform = node.getStringValue();
        deserializerMap['profileVisibility'] = (node) => profileVisibility = node.getEnumValue<UpdateTeamBodyProfileVisibility>((stringValue) => UpdateTeamBodyProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['region'] = (node) => region = node.getEnumValue<UpdateTeamBodyRegion>((stringValue) => UpdateTeamBodyRegion.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['tag'] = (node) => tag = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('description', description);
        writer.writeStringValue('name', name);
        writer.writeStringValue('platform', platform);
        writer.writeEnumValue<UpdateTeamBodyProfileVisibility>('profileVisibility', profileVisibility, (e) => e?.value);
        writer.writeEnumValue<UpdateTeamBodyRegion>('region', region, (e) => e?.value);
        writer.writeStringValue('tag', tag);
        writer.writeAdditionalData(additionalData);
    }
}
