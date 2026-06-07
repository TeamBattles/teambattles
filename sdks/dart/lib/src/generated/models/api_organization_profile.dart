// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_organization_profile_avatar_url.dart';
import './api_organization_profile_banner_url.dart';
import './api_organization_profile_created_at.dart';
import './api_organization_profile_description.dart';
import './api_organization_profile_slug.dart';
import './api_organization_profile_tag.dart';
import './profile_visibility.dart';

/// auto generated
/// API-safe organization profile.
class ApiOrganizationProfile implements Parsable {
    ///  The avatarUrl property
    ApiOrganizationProfileAvatarUrl? avatarUrl;
    ///  The bannerUrl property
    ApiOrganizationProfileBannerUrl? bannerUrl;
    ///  The createdAt property
    ApiOrganizationProfileCreatedAt? createdAt;
    ///  The description property
    ApiOrganizationProfileDescription? description;
    ///  The draws property
    int? draws;
    ///  Organization ID.
    String? id;
    ///  The isMember property
    bool? isMember;
    ///  The isVerified property
    bool? isVerified;
    ///  The losses property
    int? losses;
    ///  The matchesPlayed property
    int? matchesPlayed;
    ///  The memberCount property
    int? memberCount;
    ///  Organization name.
    String? name;
    ///  The slug property
    ApiOrganizationProfileSlug? slug;
    ///  The tag property
    ApiOrganizationProfileTag? tag;
    ///  The teamCount property
    int? teamCount;
    ///  Public profile visibility setting.
    ProfileVisibility? visibility;
    ///  The wins property
    int? wins;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiOrganizationProfile createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiOrganizationProfile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiOrganizationProfileAvatarUrl>(ApiOrganizationProfileAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['bannerUrl'] = (node) => bannerUrl = node.getObjectValue<ApiOrganizationProfileBannerUrl>(ApiOrganizationProfileBannerUrl.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<ApiOrganizationProfileCreatedAt>(ApiOrganizationProfileCreatedAt.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getObjectValue<ApiOrganizationProfileDescription>(ApiOrganizationProfileDescription.createFromDiscriminatorValue);
        deserializerMap['draws'] = (node) => draws = node.getIntValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isMember'] = (node) => isMember = node.getBoolValue();
        deserializerMap['isVerified'] = (node) => isVerified = node.getBoolValue();
        deserializerMap['losses'] = (node) => losses = node.getIntValue();
        deserializerMap['matchesPlayed'] = (node) => matchesPlayed = node.getIntValue();
        deserializerMap['memberCount'] = (node) => memberCount = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getObjectValue<ApiOrganizationProfileSlug>(ApiOrganizationProfileSlug.createFromDiscriminatorValue);
        deserializerMap['tag'] = (node) => tag = node.getObjectValue<ApiOrganizationProfileTag>(ApiOrganizationProfileTag.createFromDiscriminatorValue);
        deserializerMap['teamCount'] = (node) => teamCount = node.getIntValue();
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<ProfileVisibility>((stringValue) => ProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['wins'] = (node) => wins = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiOrganizationProfileAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeObjectValue<ApiOrganizationProfileBannerUrl>('bannerUrl', bannerUrl);
        writer.writeObjectValue<ApiOrganizationProfileCreatedAt>('createdAt', createdAt);
        writer.writeObjectValue<ApiOrganizationProfileDescription>('description', description);
        writer.writeIntValue('draws', draws);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isMember', value:isMember);
        writer.writeBoolValue('isVerified', value:isVerified);
        writer.writeIntValue('losses', losses);
        writer.writeIntValue('matchesPlayed', matchesPlayed);
        writer.writeIntValue('memberCount', memberCount);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ApiOrganizationProfileSlug>('slug', slug);
        writer.writeObjectValue<ApiOrganizationProfileTag>('tag', tag);
        writer.writeIntValue('teamCount', teamCount);
        writer.writeEnumValue<ProfileVisibility>('visibility', visibility, (e) => e?.value);
        writer.writeIntValue('wins', wins);
    }
}
