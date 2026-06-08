// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class UpdateAttendanceResponse implements Parsable {
    ///  The message property
    String? message;
    ///  The reclaimedSpot property
    bool? reclaimedSpot;
    ///  The replacedBy property
    String? replacedBy;
    ///  The success property
    bool? success;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static UpdateAttendanceResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return UpdateAttendanceResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['message'] = (node) => message = node.getStringValue();
        deserializerMap['reclaimedSpot'] = (node) => reclaimedSpot = node.getBoolValue();
        deserializerMap['replacedBy'] = (node) => replacedBy = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('message', message);
        writer.writeBoolValue('reclaimedSpot', value:reclaimedSpot);
        writer.writeStringValue('replacedBy', replacedBy);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
