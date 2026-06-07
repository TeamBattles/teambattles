// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_user_profile_avatar_url.dart';
import './api_user_profile_banner_url.dart';
import './api_user_profile_bio.dart';
import './api_user_profile_created_at.dart';
import './api_user_profile_name.dart';
import './api_user_profile_username.dart';
import './profile_visibility.dart';

/// auto generated
/// API-safe public user profile.
class ApiUserProfile implements Parsable {
    ///  Avatar image URL, when set.
    ApiUserProfileAvatarUrl? avatarUrl;
    ///  Banner image URL, when set.
    ApiUserProfileBannerUrl? bannerUrl;
    ///  Public profile bio.
    ApiUserProfileBio? bio;
    ///  The createdAt property
    ApiUserProfileCreatedAt? createdAt;
    ///  User ID.
    String? id;
    ///  The isVerified property
    bool? isVerified;
    ///  Display name, when set.
    ApiUserProfileName? name;
    ///  User handle, when set.
    ApiUserProfileUsername? username;
    ///  Public profile visibility setting.
    ProfileVisibility? visibility;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserProfile createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiUserProfile();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiUserProfileAvatarUrl>(ApiUserProfileAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['bannerUrl'] = (node) => bannerUrl = node.getObjectValue<ApiUserProfileBannerUrl>(ApiUserProfileBannerUrl.createFromDiscriminatorValue);
        deserializerMap['bio'] = (node) => bio = node.getObjectValue<ApiUserProfileBio>(ApiUserProfileBio.createFromDiscriminatorValue);
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<ApiUserProfileCreatedAt>(ApiUserProfileCreatedAt.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isVerified'] = (node) => isVerified = node.getBoolValue();
        deserializerMap['name'] = (node) => name = node.getObjectValue<ApiUserProfileName>(ApiUserProfileName.createFromDiscriminatorValue);
        deserializerMap['username'] = (node) => username = node.getObjectValue<ApiUserProfileUsername>(ApiUserProfileUsername.createFromDiscriminatorValue);
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<ProfileVisibility>((stringValue) => ProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiUserProfileAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeObjectValue<ApiUserProfileBannerUrl>('bannerUrl', bannerUrl);
        writer.writeObjectValue<ApiUserProfileBio>('bio', bio);
        writer.writeObjectValue<ApiUserProfileCreatedAt>('createdAt', createdAt);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isVerified', value:isVerified);
        writer.writeObjectValue<ApiUserProfileName>('name', name);
        writer.writeObjectValue<ApiUserProfileUsername>('username', username);
        writer.writeEnumValue<ProfileVisibility>('visibility', visibility, (e) => e?.value);
    }
}
