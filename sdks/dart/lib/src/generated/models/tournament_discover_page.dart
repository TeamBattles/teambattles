// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_summary.dart';

/// auto generated
/// A page of publicly listed tournaments, featured entries first.
class TournamentDiscoverPage implements Parsable {
    ///  Number of tournaments in this page.
    int? count;
    ///  Echo of the applied page size.
    int? limit;
    ///  Echo of the requested 1-based page.
    int? page;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    ///  Total tournaments matching the filters.
    int? total;
    ///  Tournaments on this page.
    Iterable<TournamentSummary>? tournaments;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentDiscoverPage createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentDiscoverPage();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['limit'] = (node) => limit = node.getIntValue();
        deserializerMap['page'] = (node) => page = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        deserializerMap['total'] = (node) => total = node.getIntValue();
        deserializerMap['tournaments'] = (node) => tournaments = node.getCollectionOfObjectValues<TournamentSummary>(TournamentSummary.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeIntValue('limit', limit);
        writer.writeIntValue('page', page);
        writer.writeStringValue('timestamp', timestamp);
        writer.writeIntValue('total', total);
        writer.writeCollectionOfObjectValues<TournamentSummary>('tournaments', tournaments);
    }
}
