// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_organization_profile_avatar_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiOrganizationProfileAvatarUrlMember1], [String?]
class ApiOrganizationProfileAvatarUrl implements Parsable {
    ///  Composed type representation for type [ApiOrganizationProfileAvatarUrlMember1]
    ApiOrganizationProfileAvatarUrlMember1? apiOrganizationProfileAvatarUrlMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiOrganizationProfileAvatarUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiOrganizationProfileAvatarUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiOrganizationProfileAvatarUrlMember1 = ApiOrganizationProfileAvatarUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiOrganizationProfileAvatarUrlMember1 != null){apiOrganizationProfileAvatarUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
        return deserializers;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        if(string_ != null) {
            writer.writeStringValue(null, string_);
        }
        else {
            writer.writeObjectValue<ApiOrganizationProfileAvatarUrlMember1>(null, apiOrganizationProfileAvatarUrlMember1);
        }
    }
}
