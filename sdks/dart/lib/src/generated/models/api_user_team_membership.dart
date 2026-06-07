// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_organization_summary.dart';
import './api_user_team_membership_avatar_url.dart';
import './api_user_team_membership_joined_at.dart';
import './api_user_team_membership_slug.dart';
import './api_user_team_membership_tag.dart';
import './profile_visibility.dart';

/// auto generated
/// API-safe team affiliation row on a user profile.
class ApiUserTeamMembership implements Parsable {
    ///  The avatarUrl property
    ApiUserTeamMembershipAvatarUrl? avatarUrl;
    ///  Team ID.
    String? id;
    ///  The joinedAt property
    ApiUserTeamMembershipJoinedAt? joinedAt;
    ///  Team name.
    String? name;
    ///  The organization property
    ApiOrganizationSummary? organization;
    ///  The role property
    String? role;
    ///  The slug property
    ApiUserTeamMembershipSlug? slug;
    ///  The tag property
    ApiUserTeamMembershipTag? tag;
    ///  Public profile visibility setting.
    ProfileVisibility? visibility;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiUserTeamMembership createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiUserTeamMembership();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiUserTeamMembershipAvatarUrl>(ApiUserTeamMembershipAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['joinedAt'] = (node) => joinedAt = node.getObjectValue<ApiUserTeamMembershipJoinedAt>(ApiUserTeamMembershipJoinedAt.createFromDiscriminatorValue);
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['organization'] = (node) => organization = node.getObjectValue<ApiOrganizationSummary>(ApiOrganizationSummary.createFromDiscriminatorValue);
        deserializerMap['role'] = (node) => role = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getObjectValue<ApiUserTeamMembershipSlug>(ApiUserTeamMembershipSlug.createFromDiscriminatorValue);
        deserializerMap['tag'] = (node) => tag = node.getObjectValue<ApiUserTeamMembershipTag>(ApiUserTeamMembershipTag.createFromDiscriminatorValue);
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<ProfileVisibility>((stringValue) => ProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiUserTeamMembershipAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ApiUserTeamMembershipJoinedAt>('joinedAt', joinedAt);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ApiOrganizationSummary>('organization', organization);
        writer.writeStringValue('role', role);
        writer.writeObjectValue<ApiUserTeamMembershipSlug>('slug', slug);
        writer.writeObjectValue<ApiUserTeamMembershipTag>('tag', tag);
        writer.writeEnumValue<ProfileVisibility>('visibility', visibility, (e) => e?.value);
    }
}
