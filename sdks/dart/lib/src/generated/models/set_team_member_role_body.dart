// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './set_team_member_role_body_role.dart';

/// auto generated
/// Set a team member's role.
class SetTeamMemberRoleBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The new role for the member. Captaincy is changed via captaincy transfer.
    SetTeamMemberRoleBodyRole? role;
    /// Instantiates a new [SetTeamMemberRoleBody] and sets the default values.
    SetTeamMemberRoleBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static SetTeamMemberRoleBody createFromDiscriminatorValue(ParseNode parseNode) {
        return SetTeamMemberRoleBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['role'] = (node) => role = node.getEnumValue<SetTeamMemberRoleBodyRole>((stringValue) => SetTeamMemberRoleBodyRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<SetTeamMemberRoleBodyRole>('role', role, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
