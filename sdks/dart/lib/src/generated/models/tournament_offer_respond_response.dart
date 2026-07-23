// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Outcome of accepting or declining a free-agent pickup offer.
class TournamentOfferRespondResponse implements Parsable {
    ///  Echoes the request's accept flag once the response has been recorded. An offer that turned out to be no longer actionable is a 409 rather than a false here - see the endpoint description.
    bool? accepted;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentOfferRespondResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentOfferRespondResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['accepted'] = (node) => accepted = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('accepted', value:accepted);
        writer.writeStringValue('timestamp', timestamp);
    }
}
