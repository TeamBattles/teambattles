// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Result of submitting a single map score.
class GameSingleMapScoreResponse implements Parsable {
    ///  Index of the map that was scored.
    int? mapIndex;
    ///  Confirmation state, always "CONFIRMED" on success.
    String? scoreStatus;
    ///  The success property
    bool? success;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameSingleMapScoreResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameSingleMapScoreResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['scoreStatus'] = (node) => scoreStatus = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeStringValue('scoreStatus', scoreStatus);
        writer.writeBoolValue('success', value:success);
    }
}
