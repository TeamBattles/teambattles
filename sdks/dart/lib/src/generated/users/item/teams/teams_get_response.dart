// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/api_user_team_membership.dart';

/// auto generated
/// Envelope containing teams, count, and a response timestamp.
class TeamsGetResponse implements Parsable {
    ///  The count property
    int? count;
    ///  The teams property
    Iterable<ApiUserTeamMembership>? teams;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TeamsGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TeamsGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['teams'] = (node) => teams = node.getCollectionOfObjectValues<ApiUserTeamMembership>(ApiUserTeamMembership.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<ApiUserTeamMembership>('teams', teams);
        writer.writeStringValue('timestamp', timestamp);
    }
}
