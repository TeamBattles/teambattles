// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './add_org_member_body_role.dart';

/// auto generated
/// Add a member to the organization.
class AddOrgMemberBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The role to assign to the new member. Ownership is set on creation.
    AddOrgMemberBodyRole? role;
    ///  Convex user ID of the member to add.
    String? targetUserId;
    /// Instantiates a new [AddOrgMemberBody] and sets the default values.
    AddOrgMemberBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AddOrgMemberBody createFromDiscriminatorValue(ParseNode parseNode) {
        return AddOrgMemberBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['role'] = (node) => role = node.getEnumValue<AddOrgMemberBodyRole>((stringValue) => AddOrgMemberBodyRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['targetUserId'] = (node) => targetUserId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<AddOrgMemberBodyRole>('role', role, (e) => e?.value);
        writer.writeStringValue('targetUserId', targetUserId);
        writer.writeAdditionalData(additionalData);
    }
}
