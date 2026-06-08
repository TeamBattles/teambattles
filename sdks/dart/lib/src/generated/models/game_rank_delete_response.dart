// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Result of deleting a game rank.
class GameRankDeleteResponse implements Parsable {
    ///  True when a rank was removed; false when none existed (no-op).
    bool? deleted;
    ///  ISO 8601 response timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameRankDeleteResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameRankDeleteResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['deleted'] = (node) => deleted = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('deleted', value:deleted);
        writer.writeStringValue('timestamp', timestamp);
    }
}
