// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_team_profile_created_at.dart';
import './profile_visibility.dart';

/// auto generated
/// API-safe team profile.
class ApiTeamProfile implements Parsable {
    ///  The avatarUrl property
    String? avatarUrl;
    ///  The bannerUrl property
    String? bannerUrl;
    ///  The createdAt property
    ApiTeamProfileCreatedAt? createdAt;
    ///  The description property
    String? description;
    ///  The draws property
    int? draws;
    ///  The experience property
    double? experience;
    ///  The gameId property
    String? gameId;
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
    String? organizationId;
    ///  The slug property
    String? slug;
    ///  The tag property
    String? tag;
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
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getStringValue();
        deserializerMap['bannerUrl'] = (node) => bannerUrl = node.getStringValue();
        deserializerMap['createdAt'] = (node) => createdAt = node.getObjectValue<ApiTeamProfileCreatedAt>(ApiTeamProfileCreatedAt.createFromDiscriminatorValue);
        deserializerMap['description'] = (node) => description = node.getStringValue();
        deserializerMap['draws'] = (node) => draws = node.getIntValue();
        deserializerMap['experience'] = (node) => experience = node.getDoubleValue();
        deserializerMap['gameId'] = (node) => gameId = node.getStringValue();
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['isMember'] = (node) => isMember = node.getBoolValue();
        deserializerMap['losses'] = (node) => losses = node.getIntValue();
        deserializerMap['matchesPlayed'] = (node) => matchesPlayed = node.getIntValue();
        deserializerMap['memberCount'] = (node) => memberCount = node.getIntValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['organizationId'] = (node) => organizationId = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getStringValue();
        deserializerMap['tag'] = (node) => tag = node.getStringValue();
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<ProfileVisibility>((stringValue) => ProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['wins'] = (node) => wins = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('avatarUrl', avatarUrl);
        writer.writeStringValue('bannerUrl', bannerUrl);
        writer.writeObjectValue<ApiTeamProfileCreatedAt>('createdAt', createdAt);
        writer.writeStringValue('description', description);
        writer.writeIntValue('draws', draws);
        writer.writeDoubleValue('experience', experience);
        writer.writeStringValue('gameId', gameId);
        writer.writeStringValue('id', id);
        writer.writeBoolValue('isMember', value:isMember);
        writer.writeIntValue('losses', losses);
        writer.writeIntValue('matchesPlayed', matchesPlayed);
        writer.writeIntValue('memberCount', memberCount);
        writer.writeStringValue('name', name);
        writer.writeStringValue('organizationId', organizationId);
        writer.writeStringValue('slug', slug);
        writer.writeStringValue('tag', tag);
        writer.writeEnumValue<ProfileVisibility>('visibility', visibility, (e) => e?.value);
        writer.writeIntValue('wins', wins);
    }
}
