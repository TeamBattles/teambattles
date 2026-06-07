// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_user_organization_membership_avatar_url.dart';
import './api_user_organization_membership_joined_at.dart';
import './api_user_organization_membership_slug.dart';
import './api_user_organization_membership_tag.dart';
import './profile_visibility.dart';

/// auto generated
/// API-safe organization affiliation row on a user profile.
class ApiUserOrganizationMembership implements Parsable {
    ///  The avatarUrl property
    ApiUserOrganizationMembershipAvatarUrl? avatarUrl;
    ///  Organization ID.
    String? id;
    ///  The joinedAt property
    ApiUserOrganizationMembershipJoinedAt? joinedAt;
    ///  Organization name.
    String? name;
    ///  The role property
    String? role;
    ///  The slug property
    ApiUserOrganizationMembershipSlug? slug;
    ///  The tag property
    ApiUserOrganizationMembershipTag? tag;
    ///  Public profile visibility setting.
    ProfileVisibility? visibility;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserOrganizationMembership createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiUserOrganizationMembership();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiUserOrganizationMembershipAvatarUrl>(ApiUserOrganizationMembershipAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['joinedAt'] = (node) => joinedAt = node.getObjectValue<ApiUserOrganizationMembershipJoinedAt>(ApiUserOrganizationMembershipJoinedAt.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['role'] = (node) => role = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getObjectValue<ApiUserOrganizationMembershipSlug>(ApiUserOrganizationMembershipSlug.createFromDiscriminatorValue);
        deserializerMap['tag'] = (node) => tag = node.getObjectValue<ApiUserOrganizationMembershipTag>(ApiUserOrganizationMembershipTag.createFromDiscriminatorValue);
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<ProfileVisibility>((stringValue) => ProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiUserOrganizationMembershipAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ApiUserOrganizationMembershipJoinedAt>('joinedAt', joinedAt);
        writer.writeStringValue('name', name);
        writer.writeStringValue('role', role);
        writer.writeObjectValue<ApiUserOrganizationMembershipSlug>('slug', slug);
        writer.writeObjectValue<ApiUserOrganizationMembershipTag>('tag', tag);
        writer.writeEnumValue<ProfileVisibility>('visibility', visibility, (e) => e?.value);
    }
}
