// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_user_trophy_awarded_at.dart';
import './api_user_trophy_description.dart';
import './api_user_trophy_icon_url.dart';
import './api_user_trophy_rarity.dart';
import './api_user_trophy_title.dart';

/// auto generated
/// API-safe user trophy. Event linkage fields are intentionally omitted.
class ApiUserTrophy implements Parsable {
    ///  The awardedAt property
    ApiUserTrophyAwardedAt? awardedAt;
    ///  The description property
    ApiUserTrophyDescription? description;
    ///  The iconUrl property
    ApiUserTrophyIconUrl? iconUrl;
    ///  Trophy award ID.
    String? id;
    ///  The rarity property
    ApiUserTrophyRarity? rarity;
    ///  The title property
    ApiUserTrophyTitle? title;
    ///  Trophy definition ID.
    String? trophyId;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserTrophy createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiUserTrophy();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['awardedAt'] = (node) => awardedAt = node.getObjectValue<ApiUserTrophyAwardedAt>(ApiUserTrophyAwardedAt.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getObjectValue<ApiUserTrophyDescription>(ApiUserTrophyDescription.createFromDiscriminatorValue);
        deserializerMap['iconUrl'] = (node) => iconUrl = node.getObjectValue<ApiUserTrophyIconUrl>(ApiUserTrophyIconUrl.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['rarity'] = (node) => rarity = node.getObjectValue<ApiUserTrophyRarity>(ApiUserTrophyRarity.createFromDiscriminatorValue);
        deserializerMap['title'] = (node) => title = node.getObjectValue<ApiUserTrophyTitle>(ApiUserTrophyTitle.createFromDiscriminatorValue);
        deserializerMap['trophyId'] = (node) => trophyId = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiUserTrophyAwardedAt>('awardedAt', awardedAt);
        writer.writeObjectValue<ApiUserTrophyDescription>('description', description);
        writer.writeObjectValue<ApiUserTrophyIconUrl>('iconUrl', iconUrl);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ApiUserTrophyRarity>('rarity', rarity);
        writer.writeObjectValue<ApiUserTrophyTitle>('title', title);
        writer.writeStringValue('trophyId', trophyId);
    }
}
