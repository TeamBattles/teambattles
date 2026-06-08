// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_stream_status.dart';

/// auto generated
/// Stream status plus a response timestamp.
class ApiStreamStatusEnvelope implements Parsable {
    ///  API-safe live-stream status for a user.
    ApiStreamStatus? stream_;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiStreamStatusEnvelope createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiStreamStatusEnvelope();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['stream'] = (node) => stream_ = node.getObjectValue<ApiStreamStatus>(ApiStreamStatus.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiStreamStatus>('stream', stream_);
        writer.writeStringValue('timestamp', timestamp);
    }
}
