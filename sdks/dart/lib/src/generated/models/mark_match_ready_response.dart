// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
class MarkMatchReadyResponse implements Parsable {
    ///  The matchReady property
    bool? matchReady;
    ///  The success property
    bool? success;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MarkMatchReadyResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return MarkMatchReadyResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['matchReady'] = (node) => matchReady = node.getBoolValue();
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeBoolValue('matchReady', value:matchReady);
        writer.writeBoolValue('success', value:success);
        writer.writeStringValue('timestamp', timestamp);
    }
}
