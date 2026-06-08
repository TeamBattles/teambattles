// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_league_member_role_request_body_role.dart';

/// auto generated
/// Updates a league staff member role.
class UpdateLeagueMemberRoleRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Assignable league staff role. OWNER cannot be assigned through this API.
    UpdateLeagueMemberRoleRequestBodyRole? role;
    /// Instantiates a new [UpdateLeagueMemberRoleRequestBody] and sets the default values.
    UpdateLeagueMemberRoleRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateLeagueMemberRoleRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateLeagueMemberRoleRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['role'] = (node) => role = node.getEnumValue<UpdateLeagueMemberRoleRequestBodyRole>((stringValue) => UpdateLeagueMemberRoleRequestBodyRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<UpdateLeagueMemberRoleRequestBodyRole>('role', role, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
