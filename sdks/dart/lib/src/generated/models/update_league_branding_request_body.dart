// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_branding_socials.dart';

/// auto generated
/// Updates league profile branding and public metadata.
class UpdateLeagueBrandingRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Convex storage ID for the league avatar.
    String? avatarStorageId;
    ///  Convex storage ID for the league banner.
    String? bannerStorageId;
    ///  The description property
    String? description;
    ///  The name property
    String? name;
    ///  The profileThemeId property
    String? profileThemeId;
    ///  The socials property
    LeagueBrandingSocials? socials;
    /// Instantiates a new [UpdateLeagueBrandingRequestBody] and sets the default values.
    UpdateLeagueBrandingRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateLeagueBrandingRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateLeagueBrandingRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarStorageId'] = (node) => avatarStorageId = node.getStringValue();
        deserializerMap['bannerStorageId'] = (node) => bannerStorageId = node.getStringValue();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['profileThemeId'] = (node) => profileThemeId = node.getStringValue();
        deserializerMap['socials'] = (node) => socials = node.getObjectValue<LeagueBrandingSocials>(LeagueBrandingSocials.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('avatarStorageId', avatarStorageId);
        writer.writeStringValue('bannerStorageId', bannerStorageId);
        writer.writeStringValue('description', description);
        writer.writeStringValue('name', name);
        writer.writeStringValue('profileThemeId', profileThemeId);
        writer.writeObjectValue<LeagueBrandingSocials>('socials', socials);
        writer.writeAdditionalData(additionalData);
    }
}
