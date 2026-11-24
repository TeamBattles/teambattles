// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Game-scoped playlist definition.
class ApiGamePlaylist implements Parsable {
    ///  The allowedGameModeIds property
    Iterable<String>? allowedGameModeIds;
    ///  The descriptionKey property
    String? descriptionKey;
    ///  The id property
    String? id;
    ///  The image property
    String? image;
    ///  The nameKey property
    String? nameKey;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGamePlaylist createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiGamePlaylist();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['allowedGameModeIds'] = (node) => allowedGameModeIds = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['descriptionKey'] = (node) => descriptionKey = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['image'] = (node) => image = node.getStringValue();
        deserializerMap['nameKey'] = (node) => nameKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfPrimitiveValues<String?>('allowedGameModeIds', allowedGameModeIds);
        writer.writeStringValue('descriptionKey', descriptionKey);
        writer.writeStringValue('id', id);
        writer.writeStringValue('image', image);
        writer.writeStringValue('nameKey', nameKey);
    }
}
