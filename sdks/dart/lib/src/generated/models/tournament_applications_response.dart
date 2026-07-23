// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_application.dart';

/// auto generated
/// Pending tournament applications.
class TournamentApplicationsResponse implements Parsable {
    ///  Participant rows in PENDING status only. Approved, denied, withdrawn, and disqualified entries are not applications and appear on the participants endpoint instead.
    Iterable<TournamentApplication>? applications;
    ///  Number of applications returned.
    int? count;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentApplicationsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentApplicationsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['applications'] = (node) => applications = node.getCollectionOfObjectValues<TournamentApplication>(TournamentApplication.createFromDiscriminatorValue);
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<TournamentApplication>('applications', applications);
        writer.writeIntValue('count', count);
        writer.writeStringValue('timestamp', timestamp);
    }
}
