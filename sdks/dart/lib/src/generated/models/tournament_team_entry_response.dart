// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// The participant row created (or reused) by an entry or application.
class TournamentTeamEntryResponse implements Parsable {
    ///  The team's participant ID. This is the handle the check-in and withdraw endpoints are keyed by, so store it - it is otherwise only rediscoverable through GET /tournaments/{identifier}/me.
    String? participantId;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentTeamEntryResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentTeamEntryResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['participantId'] = (node) => participantId = node.getStringValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('participantId', participantId);
        writer.writeStringValue('timestamp', timestamp);
    }
}
