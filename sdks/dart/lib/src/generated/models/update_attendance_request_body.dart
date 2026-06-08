// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './update_attendance_request_body_status.dart';

/// auto generated
/// Updates the API key owner's own attendance status for a match.
class UpdateAttendanceRequestBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  The API key owner's attendance status for this match.
    UpdateAttendanceRequestBodyStatus? status;
    /// Instantiates a new [UpdateAttendanceRequestBody] and sets the default values.
    UpdateAttendanceRequestBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateAttendanceRequestBody createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateAttendanceRequestBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['status'] = (node) => status = node.getEnumValue<UpdateAttendanceRequestBodyStatus>((stringValue) => UpdateAttendanceRequestBodyStatus.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeEnumValue<UpdateAttendanceRequestBodyStatus>('status', status, (e) => e?.value);
        writer.writeAdditionalData(additionalData);
    }
}
