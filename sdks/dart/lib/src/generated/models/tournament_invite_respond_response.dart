// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Outcome of accepting or declining a tournament invite.
class TournamentInviteRespondResponse implements Parsable {
    ///  Echoes the request's accept flag once the response has been recorded.
    bool? accepted;
    ///  The participant row the acceptance created or reused. Present only when accepted is true; store it, because check-in and withdraw are keyed by it.
    String? participantId;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentInviteRespondResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentInviteRespondResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['accepted'] = (node) => accepted = node.getBoolValue();
        deserializerMap['participantId'] = (node) => participantId = node.getStringValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('accepted', value:accepted);
        writer.writeStringValue('participantId', participantId);
        writer.writeStringValue('timestamp', timestamp);
    }
}
