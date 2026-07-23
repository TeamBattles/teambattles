// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_staff_role.dart';

/// auto generated
/// Tournament staff addition payload.
class TournamentAddStaffBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Tournament staff role.
    TournamentStaffRole? role;
    ///  User ID of the staff member to add.
    String? userId;
    /// Instantiates a new [TournamentAddStaffBody] and sets the default values.
    TournamentAddStaffBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentAddStaffBody createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentAddStaffBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['role'] = (node) => role = node.getEnumValue<TournamentStaffRole>((stringValue) => TournamentStaffRole.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['userId'] = (node) => userId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<TournamentStaffRole>('role', role, (e) => e?.value);
        writer.writeStringValue('userId', userId);
        writer.writeAdditionalData(additionalData);
    }
}
