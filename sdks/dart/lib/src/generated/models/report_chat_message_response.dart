// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class ReportChatMessageResponse implements Parsable {
    ///  True if the owner had already reported this message.
    bool? alreadyReported;
    ///  Report ID (existing one if already reported).
    String? reportId;
    ///  The success property
    bool? success;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ReportChatMessageResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ReportChatMessageResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['alreadyReported'] = (node) => alreadyReported = node.getBoolValue();
        deserializerMap['reportId'] = (node) => reportId = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('alreadyReported', value:alreadyReported);
        writer.writeStringValue('reportId', reportId);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
