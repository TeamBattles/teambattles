// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// A single version of a Twitch chat badge.
class TwitchBadgeVersion implements Parsable {
    ///  Optional click action identifier.
    String? clickAction;
    ///  Optional URL opened when the badge is clicked.
    String? clickUrl;
    ///  Human-readable badge description.
    String? description;
    ///  Badge version id (e.g. tier level or numeric id).
    String? id;
    ///  Badge image URL at 1x resolution.
    String? imageUrl1x;
    ///  Badge image URL at 2x resolution.
    String? imageUrl2x;
    ///  Badge image URL at 4x resolution.
    String? imageUrl4x;
    ///  Human-readable badge title.
    String? title;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TwitchBadgeVersion createFromDiscriminatorValue(ParseNode parseNode) {
        return TwitchBadgeVersion();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['click_action'] = (node) => clickAction = node.getStringValue();
        deserializerMap['click_url'] = (node) => clickUrl = node.getStringValue();
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['image_url_1x'] = (node) => imageUrl1x = node.getStringValue();
        deserializerMap['image_url_2x'] = (node) => imageUrl2x = node.getStringValue();
        deserializerMap['image_url_4x'] = (node) => imageUrl4x = node.getStringValue();
        deserializerMap['title'] = (node) => title = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('click_action', clickAction);
        writer.writeStringValue('click_url', clickUrl);
        writer.writeStringValue('description', description);
        writer.writeStringValue('id', id);
        writer.writeStringValue('image_url_1x', imageUrl1x);
        writer.writeStringValue('image_url_2x', imageUrl2x);
        writer.writeStringValue('image_url_4x', imageUrl4x);
        writer.writeStringValue('title', title);
    }
}
