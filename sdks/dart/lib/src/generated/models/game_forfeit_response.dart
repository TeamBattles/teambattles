// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Result of a successful match forfeit.
class GameForfeitResponse implements Parsable {
    ///  ID of the team that forfeited.
    String? forfeitedByTeamId;
    ///  ID of the forfeited match.
    String? matchId;
    ///  The success property
    bool? success;
    ///  Server response time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameForfeitResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameForfeitResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['forfeitedByTeamId'] = (node) => forfeitedByTeamId = node.getStringValue();
        deserializerMap['matchId'] = (node) => matchId = node.getStringValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('forfeitedByTeamId', forfeitedByTeamId);
        writer.writeStringValue('matchId', matchId);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
