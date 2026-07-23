// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_roster_source.dart';

/// auto generated
/// A tournament roster the caller is personally on.
class MyTournamentRosterEntry implements Parsable {
    ///  Time the caller was rostered (epoch milliseconds).
    double? addedAt;
    ///  Participant whose roster the caller is on.
    String? participantId;
    ///  Roster entry ID. Required by the roster-removal endpoints. This is the caller's OWN roster row - a captain removing a different player reads that id from the participants endpoint instead.
    String? rosterEntryId;
    ///  How a player reached a participant's tournament roster.
    TournamentRosterSource? source;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MyTournamentRosterEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return MyTournamentRosterEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['addedAt'] = (node) => addedAt = node.getDoubleValue();
        deserializerMap['participantId'] = (node) => participantId = node.getStringValue();
        deserializerMap['rosterEntryId'] = (node) => rosterEntryId = node.getStringValue();
        deserializerMap['source'] = (node) => source = node.getEnumValue<TournamentRosterSource>((stringValue) => TournamentRosterSource.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeDoubleValue('addedAt', addedAt);
        writer.writeStringValue('participantId', participantId);
        writer.writeStringValue('rosterEntryId', rosterEntryId);
        writer.writeEnumValue<TournamentRosterSource>('source', source, (e) => e?.value);
    }
}
