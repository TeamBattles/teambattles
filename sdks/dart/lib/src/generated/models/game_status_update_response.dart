// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Result of a successful match status transition.
class GameStatusUpdateResponse implements Parsable {
    ///  ID of the updated match.
    String? matchId;
    ///  Match status after the transition.
    String? newStatus;
    ///  Match status before the transition.
    String? previousStatus;
    ///  The success property
    bool? success;
    ///  Server response time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameStatusUpdateResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameStatusUpdateResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['matchId'] = (node) => matchId = node.getStringValue();
        deserializerMap['newStatus'] = (node) => newStatus = node.getStringValue();
        deserializerMap['previousStatus'] = (node) => previousStatus = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('matchId', matchId);
        writer.writeStringValue('newStatus', newStatus);
        writer.writeStringValue('previousStatus', previousStatus);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
