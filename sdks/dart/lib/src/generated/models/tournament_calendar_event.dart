// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_calendar_event_kind.dart';

/// auto generated
/// One dated tournament milestone for the key owner.
class TournamentCalendarEvent implements Parsable {
    ///  Milestone time (epoch milliseconds).
    double? at;
    ///  registration = registration deadline, checkin = check-in opens, start = tournament start.
    TournamentCalendarEventKind? kind;
    ///  Tournament display name.
    String? name;
    ///  URL-friendly tournament identifier.
    String? slug;
    ///  Tournament ID.
    String? tournamentId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentCalendarEvent createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentCalendarEvent();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['at'] = (node) => at = node.getDoubleValue();
        deserializerMap['kind'] = (node) => kind = node.getEnumValue<TournamentCalendarEventKind>((stringValue) => TournamentCalendarEventKind.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['tournamentId'] = (node) => tournamentId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('at', at);
        writer.writeEnumValue<TournamentCalendarEventKind>('kind', kind, (e) => e?.value);
        writer.writeStringValue('name', name);
        writer.writeStringValue('slug', slug);
        writer.writeStringValue('tournamentId', tournamentId);
    }
}
