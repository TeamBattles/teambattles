// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_team_profile_avatar_url.dart';
import './api_team_profile_banner_url.dart';
import './api_team_profile_created_at.dart';
import './api_team_profile_description.dart';
import './api_team_profile_game_id.dart';
import './api_team_profile_organization_id.dart';
import './api_team_profile_slug.dart';
import './api_team_profile_tag.dart';
import './profile_visibility.dart';

/// auto generated
/// API-safe team profile.
class ApiTeamProfile implements Parsable {
    ///  The avatarUrl property
    ApiTeamProfileAvatarUrl? avatarUrl;
    ///  The bannerUrl property
    ApiTeamProfileBannerUrl? bannerUrl;
    ///  The createdAt property
    ApiTeamProfileCreatedAt? createdAt;
    ///  The description property
    ApiTeamProfileDescription? description;
    ///  The draws property
    int? draws;
    ///  The experience property
    double? experience;
    ///  The gameId property
    ApiTeamProfileGameId? gameId;
    ///  Team ID.
    String? id;
    ///  The isMember property
    bool? isMember;
    ///  The losses property
    int? losses;
    ///  The matchesPlayed property
    int? matchesPlayed;
    ///  The memberCount property
    int? memberCount;
    ///  Team name.
    String? name;
    ///  The organizationId property
    ApiTeamProfileOrganizationId? organizationId;
    ///  The slug property
    ApiTeamProfileSlug? slug;
    ///  The tag property
    ApiTeamProfileTag? tag;
    ///  Public profile visibility setting.
    ProfileVisibility? visibility;
    ///  The wins property
    int? wins;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiTeamProfile createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiTeamProfile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiTeamProfileAvatarUrl>(ApiTeamProfileAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['bannerUrl'] = (node) => bannerUrl = node.getObjectValue<ApiTeamProfileBannerUrl>(ApiTeamProfileBannerUrl.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<ApiTeamProfileCreatedAt>(ApiTeamProfileCreatedAt.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getObjectValue<ApiTeamProfileDescription>(ApiTeamProfileDescription.createFromDiscriminatorValue);
        deserializerMap['draws'] = (node) => draws = node.getIntValue();
        deserializerMap['experience'] = (node) => experience = node.getDoubleValue();
        deserializerMap['gameId'] = (node) => gameId = node.getObjectValue<ApiTeamProfileGameId>(ApiTeamProfileGameId.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isMember'] = (node) => isMember = node.getBoolValue();
        deserializerMap['losses'] = (node) => losses = node.getIntValue();
        deserializerMap['matchesPlayed'] = (node) => matchesPlayed = node.getIntValue();
        deserializerMap['memberCount'] = (node) => memberCount = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['organizationId'] = (node) => organizationId = node.getObjectValue<ApiTeamProfileOrganizationId>(ApiTeamProfileOrganizationId.createFromDiscriminatorValue);
        deserializerMap['slug'] = (node) => slug = node.getObjectValue<ApiTeamProfileSlug>(ApiTeamProfileSlug.createFromDiscriminatorValue);
        deserializerMap['tag'] = (node) => tag = node.getObjectValue<ApiTeamProfileTag>(ApiTeamProfileTag.createFromDiscriminatorValue);
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<ProfileVisibility>((stringValue) => ProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['wins'] = (node) => wins = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiTeamProfileAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeObjectValue<ApiTeamProfileBannerUrl>('bannerUrl', bannerUrl);
        writer.writeObjectValue<ApiTeamProfileCreatedAt>('createdAt', createdAt);
        writer.writeObjectValue<ApiTeamProfileDescription>('description', description);
        writer.writeIntValue('draws', draws);
        writer.writeDoubleValue('experience', experience);
        writer.writeObjectValue<ApiTeamProfileGameId>('gameId', gameId);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isMember', value:isMember);
        writer.writeIntValue('losses', losses);
        writer.writeIntValue('matchesPlayed', matchesPlayed);
        writer.writeIntValue('memberCount', memberCount);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ApiTeamProfileOrganizationId>('organizationId', organizationId);
        writer.writeObjectValue<ApiTeamProfileSlug>('slug', slug);
        writer.writeObjectValue<ApiTeamProfileTag>('tag', tag);
        writer.writeEnumValue<ProfileVisibility>('visibility', visibility, (e) => e?.value);
        writer.writeIntValue('wins', wins);
    }
}
