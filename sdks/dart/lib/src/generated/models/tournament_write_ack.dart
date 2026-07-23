// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Acknowledgement returned by the tournament write endpoints whose backing operation has nothing to return - the organizer writes (endpoints 22-34), the team roster writes (40, 41), and the competitor self actions that neither mint nor resolve a row (38, 39, 44, 45, 47). Endpoints that mint a row answer with that row's id instead, and the two respond endpoints (42, 46) answer with the decision they recorded.
class TournamentWriteAck implements Parsable {
    ///  Always true; failures are error responses.
    bool? success;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentWriteAck createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentWriteAck();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
