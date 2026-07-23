// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './tournament_free_agent.dart';

/// auto generated
/// The tournament free-agent pool.
class TournamentFreeAgentsResponse implements Parsable {
    ///  Number of free agents returned.
    int? count;
    ///  Free agents currently AVAILABLE in the pool.
    Iterable<TournamentFreeAgent>? freeAgents;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TournamentFreeAgentsResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TournamentFreeAgentsResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['freeAgents'] = (node) => freeAgents = node.getCollectionOfObjectValues<TournamentFreeAgent>(TournamentFreeAgent.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<TournamentFreeAgent>('freeAgents', freeAgents);
        writer.writeStringValue('timestamp', timestamp);
    }
}
