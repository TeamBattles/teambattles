// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_game_mode_description_key.dart';
import './api_game_mode_image.dart';
import './api_game_mode_reward_bonus.dart';
import './api_game_mode_short_name.dart';

/// auto generated
/// Static game mode definition.
class ApiGameMode implements Parsable {
    ///  The descriptionKey property
    ApiGameModeDescriptionKey? descriptionKey;
    ///  The id property
    String? id;
    ///  The image property
    ApiGameModeImage? image;
    ///  The mapIds property
    Iterable<String>? mapIds;
    ///  The nameKey property
    String? nameKey;
    ///  The rewardBonus property
    ApiGameModeRewardBonus? rewardBonus;
    ///  The shortName property
    ApiGameModeShortName? shortName;
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
        deserializerMap['descriptionKey'] = (node) => descriptionKey = node.getObjectValue<ApiGameModeDescriptionKey>(ApiGameModeDescriptionKey.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['image'] = (node) => image = node.getObjectValue<ApiGameModeImage>(ApiGameModeImage.createFromDiscriminatorValue);
        deserializerMap['mapIds'] = (node) => mapIds = node.getCollectionOfPrimitiveValues<String>();
        deserializerMap['nameKey'] = (node) => nameKey = node.getStringValue();
        deserializerMap['rewardBonus'] = (node) => rewardBonus = node.getObjectValue<ApiGameModeRewardBonus>(ApiGameModeRewardBonus.createFromDiscriminatorValue);
        deserializerMap['shortName'] = (node) => shortName = node.getObjectValue<ApiGameModeShortName>(ApiGameModeShortName.createFromDiscriminatorValue);
        deserializerMap['supportsDraftToggle'] = (node) => supportsDraftToggle = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiGameModeDescriptionKey>('descriptionKey', descriptionKey);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ApiGameModeImage>('image', image);
        writer.writeCollectionOfPrimitiveValues<String?>('mapIds', mapIds);
        writer.writeStringValue('nameKey', nameKey);
        writer.writeObjectValue<ApiGameModeRewardBonus>('rewardBonus', rewardBonus);
        writer.writeObjectValue<ApiGameModeShortName>('shortName', shortName);
        writer.writeBoolValue('supportsDraftToggle', value:supportsDraftToggle);
    }
}
