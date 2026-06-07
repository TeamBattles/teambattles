// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_organization_summary.dart';
import './organization_leaderboard_entry_game_slug.dart';
import './organization_leaderboard_entry_stats.dart';

/// auto generated
/// Organization leaderboard row.
class OrganizationLeaderboardEntry implements Parsable {
    ///  The gameSlug property
    OrganizationLeaderboardEntryGameSlug? gameSlug;
    ///  Organization ID.
    String? id;
    ///  Small API-safe organization summary.
    ApiOrganizationSummary? organization;
    ///  The rank property
    int? rank;
    ///  The stats property
    OrganizationLeaderboardEntryStats? stats;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static OrganizationLeaderboardEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return OrganizationLeaderboardEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameSlug'] = (node) => gameSlug = node.getObjectValue<OrganizationLeaderboardEntryGameSlug>(OrganizationLeaderboardEntryGameSlug.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['organization'] = (node) => organization = node.getObjectValue<ApiOrganizationSummary>(ApiOrganizationSummary.createFromDiscriminatorValue);
        deserializerMap['rank'] = (node) => rank = node.getIntValue();
        deserializerMap['stats'] = (node) => stats = node.getObjectValue<OrganizationLeaderboardEntryStats>(OrganizationLeaderboardEntryStats.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<OrganizationLeaderboardEntryGameSlug>('gameSlug', gameSlug);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<ApiOrganizationSummary>('organization', organization);
        writer.writeIntValue('rank', rank);
        writer.writeObjectValue<OrganizationLeaderboardEntryStats>('stats', stats);
    }
}
