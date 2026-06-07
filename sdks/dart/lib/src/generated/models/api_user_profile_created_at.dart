// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_user_profile_created_at_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiUserProfileCreatedAtMember1], [String?]
class ApiUserProfileCreatedAt implements Parsable {
    ///  Composed type representation for type [ApiUserProfileCreatedAtMember1]
    ApiUserProfileCreatedAtMember1? apiUserProfileCreatedAtMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserProfileCreatedAt createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiUserProfileCreatedAt();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiUserProfileCreatedAtMember1 = ApiUserProfileCreatedAtMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiUserProfileCreatedAtMember1 != null){apiUserProfileCreatedAtMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ApiUserProfileCreatedAtMember1>(null, apiUserProfileCreatedAtMember1);
        }
    }
}
