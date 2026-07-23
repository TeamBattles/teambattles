// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_staff_member.dart';

/// auto generated
/// The tournament staff roster.
class TournamentStaffResponse implements Parsable {
    ///  Number of staff rows returned.
    int? count;
    ///  Every tournamentStaff row on the tournament. The host is NOT listed here - host authority comes from the host record, not a staff row.
    Iterable<TournamentStaffMember>? staff;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentStaffResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentStaffResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['staff'] = (node) => staff = node.getCollectionOfObjectValues<TournamentStaffMember>(TournamentStaffMember.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<TournamentStaffMember>('staff', staff);
        writer.writeStringValue('timestamp', timestamp);
    }
}
