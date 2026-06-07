// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import '../../../models/api_user_stats.dart';

/// auto generated
/// Envelope containing stats plus a response timestamp.
class StatsGetResponse implements Parsable {
    ///  API-safe aggregate user stats.
    ApiUserStats? stats;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static StatsGetResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return StatsGetResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['stats'] = (node) => stats = node.getObjectValue<ApiUserStats>(ApiUserStats.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiUserStats>('stats', stats);
        writer.writeStringValue('timestamp', timestamp);
    }
}
