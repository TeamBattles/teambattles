// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_user_trophy_icon_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiUserTrophyIconUrlMember1], [String?]
class ApiUserTrophyIconUrl implements Parsable {
    ///  Composed type representation for type [ApiUserTrophyIconUrlMember1]
    ApiUserTrophyIconUrlMember1? apiUserTrophyIconUrlMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserTrophyIconUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiUserTrophyIconUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiUserTrophyIconUrlMember1 = ApiUserTrophyIconUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiUserTrophyIconUrlMember1 != null){apiUserTrophyIconUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ApiUserTrophyIconUrlMember1>(null, apiUserTrophyIconUrlMember1);
        }
    }
}
