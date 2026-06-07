// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_team_summary_avatar_url.dart';
import './api_team_summary_slug.dart';
import './api_team_summary_tag.dart';
import './profile_visibility.dart';

/// auto generated
/// Small API-safe team summary.
class ApiTeamSummary implements Parsable {
    ///  The avatarUrl property
    ApiTeamSummaryAvatarUrl? avatarUrl;
    ///  Team ID.
    String? id;
    ///  Team name.
    String? name;
    ///  The slug property
    ApiTeamSummarySlug? slug;
    ///  The tag property
    ApiTeamSummaryTag? tag;
    ///  Public profile visibility setting.
    ProfileVisibility? visibility;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiTeamSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiTeamSummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiTeamSummaryAvatarUrl>(ApiTeamSummaryAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getObjectValue<ApiTeamSummarySlug>(ApiTeamSummarySlug.createFromDiscriminatorValue);
        deserializerMap['tag'] = (node) => tag = node.getObjectValue<ApiTeamSummaryTag>(ApiTeamSummaryTag.createFromDiscriminatorValue);
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<ProfileVisibility>((stringValue) => ProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiTeamSummaryAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeStringValue('id', id);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ApiTeamSummarySlug>('slug', slug);
        writer.writeObjectValue<ApiTeamSummaryTag>('tag', tag);
        writer.writeEnumValue<ProfileVisibility>('visibility', visibility, (e) => e?.value);
    }
}
