// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_organization_summary_avatar_url_member1.dart';

/// auto generated
/// Composed type wrapper for classes [ApiOrganizationSummaryAvatarUrlMember1], [String?]
class ApiOrganizationSummaryAvatarUrl implements Parsable {
    ///  Composed type representation for type [ApiOrganizationSummaryAvatarUrlMember1]
    ApiOrganizationSummaryAvatarUrlMember1? apiOrganizationSummaryAvatarUrlMember1;
    ///  Composed type representation for type [String?]
    String? string_;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiOrganizationSummaryAvatarUrl createFromDiscriminatorValue(ParseNode parseNode) {
        var result = ApiOrganizationSummaryAvatarUrl();
        if(parseNode.getStringValue() != null) {
            result.string_ = parseNode.getStringValue();
        }
        else {
            result.apiOrganizationSummaryAvatarUrlMember1 = ApiOrganizationSummaryAvatarUrlMember1();
        }
        return result;
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializers = <String, void Function(ParseNode)>{};
        if(apiOrganizationSummaryAvatarUrlMember1 != null){apiOrganizationSummaryAvatarUrlMember1!.getFieldDeserializers().forEach((k,v) => deserializers.putIfAbsent(k, ()=>v));}
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
            writer.writeObjectValue<ApiOrganizationSummaryAvatarUrlMember1>(null, apiOrganizationSummaryAvatarUrlMember1);
        }
    }
}
