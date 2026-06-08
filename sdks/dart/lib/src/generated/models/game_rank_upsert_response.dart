// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Result of upserting a game rank.
class GameRankUpsertResponse implements Parsable {
    ///  ID of the upserted game rank row.
    String? id;
    ///  ISO 8601 response timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameRankUpsertResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameRankUpsertResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeStringValue('timestamp', timestamp);
    }
}
