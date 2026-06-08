// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// A freshly minted Convex storage upload URL. POST the image to it to receive a storageId for use on a downstream write.
class ImageUploadUrlResponse implements Parsable {
    ///  Short-lived, single-use URL to POST the image bytes to.
    String? uploadUrl;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ImageUploadUrlResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return ImageUploadUrlResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['uploadUrl'] = (node) => uploadUrl = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('uploadUrl', uploadUrl);
    }
}
