// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_map_cover_image.dart';
import './api_game_map_minimap_image.dart';

/// auto generated
/// Static game map definition.
class ApiGameMap implements Parsable {
    ///  The coverImage property
    ApiGameMapCoverImage? coverImage;
    ///  The id property
    String? id;
    ///  The isReleased property
    bool? isReleased;
    ///  The minimapImage property
    ApiGameMapMinimapImage? minimapImage;
    ///  The nameKey property
    String? nameKey;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameMap createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiGameMap();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['coverImage'] = (node) => coverImage = node.getObjectValue<ApiGameMapCoverImage>(ApiGameMapCoverImage.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isReleased'] = (node) => isReleased = node.getBoolValue();
        deserializerMap['minimapImage'] = (node) => minimapImage = node.getObjectValue<ApiGameMapMinimapImage>(ApiGameMapMinimapImage.createFromDiscriminatorValue);
        deserializerMap['nameKey'] = (node) => nameKey = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiGameMapCoverImage>('coverImage', coverImage);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isReleased', value:isReleased);
        writer.writeObjectValue<ApiGameMapMinimapImage>('minimapImage', minimapImage);
        writer.writeStringValue('nameKey', nameKey);
    }
}
