// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './add_league_member_request_body_role.dart';

/// auto generated
/// Adds or reactivates a league staff member.
class AddLeagueMemberRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Assignable league staff role. OWNER cannot be assigned through this API.
    AddLeagueMemberRequestBodyRole? role;
    ///  User ID to add to league staff.
    String? userId;
    /// Instantiates a new [AddLeagueMemberRequestBody] and sets the default values.
    AddLeagueMemberRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static AddLeagueMemberRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return AddLeagueMemberRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['role'] = (node) => role = node.getEnumValue<AddLeagueMemberRequestBodyRole>((stringValue) => AddLeagueMemberRequestBodyRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<AddLeagueMemberRequestBodyRole>('role', role, (e) => e?.value);
        writer.writeStringValue('userId', userId);
        writer.writeAdditionalData(additionalData);
    }
}
