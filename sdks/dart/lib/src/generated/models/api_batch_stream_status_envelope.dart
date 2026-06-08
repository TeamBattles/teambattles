// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_batch_stream_status.dart';

/// auto generated
/// Batch live-status results plus a response timestamp. Users not visible to the caller are omitted.
class ApiBatchStreamStatusEnvelope implements Parsable {
    ///  The count property
    int? count;
    ///  The statuses property
    Iterable<ApiBatchStreamStatus>? statuses;
    ///  ISO 8601 timestamp.
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiBatchStreamStatusEnvelope createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiBatchStreamStatusEnvelope();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['statuses'] = (node) => statuses = node.getCollectionOfObjectValues<ApiBatchStreamStatus>(ApiBatchStreamStatus.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<ApiBatchStreamStatus>('statuses', statuses);
        writer.writeStringValue('timestamp', timestamp);
    }
}
