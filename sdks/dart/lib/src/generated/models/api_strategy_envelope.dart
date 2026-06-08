// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_strategy.dart';

/// auto generated
/// Strategy plus a response timestamp.
class ApiStrategyEnvelope implements Parsable {
    ///  API-safe shareable strategy.
    ApiStrategy? strategy;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStrategyEnvelope createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiStrategyEnvelope();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['strategy'] = (node) => strategy = node.getObjectValue<ApiStrategy>(ApiStrategy.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiStrategy>('strategy', strategy);
        writer.writeStringValue('timestamp', timestamp);
    }
}
