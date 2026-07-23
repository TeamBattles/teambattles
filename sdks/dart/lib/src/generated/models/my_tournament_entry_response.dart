// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './my_tournament_entry.dart';

/// auto generated
/// The caller's tournament entry state.
class MyTournamentEntryResponse implements Parsable {
    ///  The API key owner's own state in one tournament.
    MyTournamentEntry? entry;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentEntryResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentEntryResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['entry'] = (node) => entry = node.getObjectValue<MyTournamentEntry>(MyTournamentEntry.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<MyTournamentEntry>('entry', entry);
        writer.writeStringValue('timestamp', timestamp);
    }
}
