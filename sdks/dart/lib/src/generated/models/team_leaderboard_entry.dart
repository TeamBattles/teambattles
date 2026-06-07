// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_team_summary.dart';
import './leaderboard_stats.dart';
import './team_leaderboard_entry_game_slug.dart';

/// auto generated
/// Team leaderboard row.
class TeamLeaderboardEntry implements Parsable {
    ///  The gameSlug property
    TeamLeaderboardEntryGameSlug? gameSlug;
    ///  Team ID.
    String? id;
    ///  The rank property
    int? rank;
    ///  Aggregate stats used for leaderboard ranking.
    LeaderboardStats? stats;
    ///  Small API-safe team summary.
    ApiTeamSummary? team;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TeamLeaderboardEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return TeamLeaderboardEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameSlug'] = (node) => gameSlug = node.getObjectValue<TeamLeaderboardEntryGameSlug>(TeamLeaderboardEntryGameSlug.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['rank'] = (node) => rank = node.getIntValue();
        deserializerMap['stats'] = (node) => stats = node.getObjectValue<LeaderboardStats>(LeaderboardStats.createFromDiscriminatorValue);
        deserializerMap['team'] = (node) => team = node.getObjectValue<ApiTeamSummary>(ApiTeamSummary.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TeamLeaderboardEntryGameSlug>('gameSlug', gameSlug);
        writer.writeStringValue('id', id);
        writer.writeIntValue('rank', rank);
        writer.writeObjectValue<LeaderboardStats>('stats', stats);
        writer.writeObjectValue<ApiTeamSummary>('team', team);
    }
}
