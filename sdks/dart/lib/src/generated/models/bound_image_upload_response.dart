// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// A stored, NSFW-scanned image bound to the API key owner.
class BoundImageUploadResponse implements Parsable {
    ///  Convex storage id, already bound to the API key owner. Use it on a write.
    String? storageId;
    ///  Public CDN URL for the stored image.
    String? url;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static BoundImageUploadResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return BoundImageUploadResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['storageId'] = (node) => storageId = node.getStringValue();
        deserializerMap['url'] = (node) => url = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('storageId', storageId);
        writer.writeStringValue('url', url);
    }
}
