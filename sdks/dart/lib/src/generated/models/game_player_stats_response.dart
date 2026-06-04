// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Result of a successful player-stats update.
class GamePlayerStatsResponse implements Parsable {
    ///  Operation performed, always "updated" on success.
    String? action;
    ///  Index of the map whose stats were updated.
    int? mapIndex;
    ///  The success property
    bool? success;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GamePlayerStatsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GamePlayerStatsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['action'] = (node) => action = node.getStringValue();
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('action', action);
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeBoolValue('success', value:success);
    }
}
