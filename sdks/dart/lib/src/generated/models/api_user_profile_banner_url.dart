// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_user_profile_banner_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiUserProfileBannerUrlMember1], [String?]
class ApiUserProfileBannerUrl implements Parsable {
    ///  Composed type representation for type [ApiUserProfileBannerUrlMember1]
    ApiUserProfileBannerUrlMember1? apiUserProfileBannerUrlMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserProfileBannerUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiUserProfileBannerUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiUserProfileBannerUrlMember1 = ApiUserProfileBannerUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiUserProfileBannerUrlMember1 != null){apiUserProfileBannerUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ApiUserProfileBannerUrlMember1>(null, apiUserProfileBannerUrlMember1);
        }
    }
}
