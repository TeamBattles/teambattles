// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './stream_platform.dart';

/// auto generated
/// Compact live-status row returned by the batch endpoint.
class ApiBatchStreamStatus implements Parsable {
    ///  User ID.
    String? id;
    ///  The isLive property
    bool? isLive;
    ///  The platforms property
    Iterable<StreamPlatform>? platforms;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiBatchStreamStatus createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiBatchStreamStatus();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isLive'] = (node) => isLive = node.getBoolValue();
        deserializerMap['platforms'] = (node) => platforms = node.getCollectionOfEnumValues<StreamPlatform>((stringValue) => StreamPlatform.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isLive', value:isLive);
        writer.writeCollectionOfEnumValues<StreamPlatform>('platforms', platforms, (e) => e?.value);
    }
}
