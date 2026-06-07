// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_organization_summary_avatar_url.dart';
import './api_organization_summary_slug.dart';
import './api_organization_summary_tag.dart';
import './profile_visibility.dart';

/// auto generated
/// Small API-safe organization summary.
class ApiOrganizationSummary implements Parsable {
    ///  The avatarUrl property
    ApiOrganizationSummaryAvatarUrl? avatarUrl;
    ///  Organization ID.
    String? id;
    ///  Organization name.
    String? name;
    ///  The slug property
    ApiOrganizationSummarySlug? slug;
    ///  The tag property
    ApiOrganizationSummaryTag? tag;
    ///  Public profile visibility setting.
    ProfileVisibility? visibility;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static ApiOrganizationSummary createFromDiscriminatorValue(ParseNode parseNode) {
        return ApiOrganizationSummary();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['avatarUrl'] = (node) => avatarUrl = node.getObjectValue<ApiOrganizationSummaryAvatarUrl>(ApiOrganizationSummaryAvatarUrl.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['name'] = (node) => name = node.getStringValue();
        deserializerMap['slug'] = (node) => slug = node.getObjectValue<ApiOrganizationSummarySlug>(ApiOrganizationSummarySlug.createFromDiscriminatorValue);
        deserializerMap['tag'] = (node) => tag = node.getObjectValue<ApiOrganizationSummaryTag>(ApiOrganizationSummaryTag.createFromDiscriminatorValue);
        deserializerMap['visibility'] = (node) => visibility = node.getEnumValue<ProfileVisibility>((stringValue) => ProfileVisibility.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<ApiOrganizationSummaryAvatarUrl>('avatarUrl', avatarUrl);
        writer.writeStringValue('id', id);
        writer.writeStringValue('name', name);
        writer.writeObjectValue<ApiOrganizationSummarySlug>('slug', slug);
        writer.writeObjectValue<ApiOrganizationSummaryTag>('tag', tag);
        writer.writeEnumValue<ProfileVisibility>('visibility', visibility, (e) => e?.value);
    }
}
