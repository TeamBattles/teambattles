// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Static game mode definition.
class ApiGameMode implements Parsable {
    ///  The descriptionKey property
    String? descriptionKey;
    ///  The id property
    String? id;
    ///  The image property
    String? image;
    ///  The mapIds property
    Iterable<String>? mapIds;
    ///  The nameKey property
    String? nameKey;
    ///  The rewardBonus property
    double? rewardBonus;
    ///  The shortName property
    String? shortName;
    ///  The supportsDraftToggle property
    bool? supportsDraftToggle;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiGameMode createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiGameMode();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['descriptionKey'] = (node) => descriptionKey = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['image'] = (node) => image = node.getStringValue();
        deserializerMap['mapIds'] = (node) => mapIds = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['nameKey'] = (node) => nameKey = node.getStringValue();
        deserializerMap['rewardBonus'] = (node) => rewardBonus = node.getDoubleValue();
        deserializerMap['shortName'] = (node) => shortName = node.getStringValue();
        deserializerMap['supportsDraftToggle'] = (node) => supportsDraftToggle = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('descriptionKey', descriptionKey);
        writer.writeStringValue('id', id);
        writer.writeStringValue('image', image);
        writer.writeCollectionOfPrimitiveValues<String?>('mapIds', mapIds);
        writer.writeStringValue('nameKey', nameKey);
        writer.writeDoubleValue('rewardBonus', rewardBonus);
        writer.writeStringValue('shortName', shortName);
        writer.writeBoolValue('supportsDraftToggle', value:supportsDraftToggle);
    }
}
