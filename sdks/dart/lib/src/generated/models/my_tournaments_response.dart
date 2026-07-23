// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './my_tournament_summary.dart';

/// auto generated
/// The key owner's manageable tournaments.
class MyTournamentsResponse implements Parsable {
    ///  Number of tournaments returned.
    int? count;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    ///  Tournaments the caller manages, including drafts and unapproved ones. Capped at 100.
    Iterable<MyTournamentSummary>? tournaments;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['tournaments'] = (node) => tournaments = node.getCollectionOfObjectValues<MyTournamentSummary>(MyTournamentSummary.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeStringValue('timestamp', timestamp);
        writer.writeCollectionOfObjectValues<MyTournamentSummary>('tournaments', tournaments);
    }
}
