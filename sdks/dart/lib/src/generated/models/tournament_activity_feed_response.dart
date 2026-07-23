// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_activity_entry.dart';

/// auto generated
/// The tournament organizer activity feed.
class TournamentActivityFeedResponse implements Parsable {
    ///  Activity entries newest first. Not cursor-paginated: this is a single `limit`-capped window over the most recent rows, so there is no way to page past the newest 100.
    Iterable<TournamentActivityEntry>? activities;
    ///  Number of entries returned.
    int? count;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentActivityFeedResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentActivityFeedResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['activities'] = (node) => activities = node.getCollectionOfObjectValues<TournamentActivityEntry>(TournamentActivityEntry.createFromDiscriminatorValue);
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<TournamentActivityEntry>('activities', activities);
        writer.writeIntValue('count', count);
        writer.writeStringValue('timestamp', timestamp);
    }
}
