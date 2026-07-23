// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_calendar_event.dart';

/// auto generated
/// Tournament milestones for the key owner's teams.
class TournamentCalendarResponse implements Parsable {
    ///  Number of milestones returned.
    int? count;
    ///  Milestones in the requested window, ascending by time.
    Iterable<TournamentCalendarEvent>? events;
    ///  Applied window end (ISO 8601).
    String? rangeEnd;
    ///  Applied window start (ISO 8601).
    String? rangeStart;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentCalendarResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentCalendarResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['events'] = (node) => events = node.getCollectionOfObjectValues<TournamentCalendarEvent>(TournamentCalendarEvent.createFromDiscriminatorValue);
        deserializerMap['rangeEnd'] = (node) => rangeEnd = node.getStringValue();
        deserializerMap['rangeStart'] = (node) => rangeStart = node.getStringValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<TournamentCalendarEvent>('events', events);
        writer.writeStringValue('rangeEnd', rangeEnd);
        writer.writeStringValue('rangeStart', rangeStart);
        writer.writeStringValue('timestamp', timestamp);
    }
}
