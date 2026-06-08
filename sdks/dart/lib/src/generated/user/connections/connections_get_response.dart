// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../models/api_own_connection.dart';

/// auto generated
/// Envelope containing connections, count, and a response timestamp.
class ConnectionsGetResponse implements Parsable {
    ///  The connections property
    Iterable<ApiOwnConnection>? connections;
    ///  The count property
    int? count;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ConnectionsGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ConnectionsGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['connections'] = (node) => connections = node.getCollectionOfObjectValues<ApiOwnConnection>(ApiOwnConnection.createFromDiscriminatorValue);
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<ApiOwnConnection>('connections', connections);
        writer.writeIntValue('count', count);
        writer.writeStringValue('timestamp', timestamp);
    }
}
