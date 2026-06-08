// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_strategy_shape.dart';

/// auto generated
/// Strategy shapes, count, and a response timestamp.
class ApiStrategyShapesEnvelope implements Parsable {
    ///  The count property
    int? count;
    ///  The shapes property
    Iterable<ApiStrategyShape>? shapes;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStrategyShapesEnvelope createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiStrategyShapesEnvelope();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['shapes'] = (node) => shapes = node.getCollectionOfObjectValues<ApiStrategyShape>(ApiStrategyShape.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<ApiStrategyShape>('shapes', shapes);
        writer.writeStringValue('timestamp', timestamp);
    }
}
