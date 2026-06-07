// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './leaderboard_sort_by.dart';
import './team_leaderboard_entry.dart';
import './team_leaderboard_response_game_slug.dart';

/// auto generated
/// Team leaderboard response.
class TeamLeaderboardResponse implements Parsable {
    ///  The gameSlug property
    TeamLeaderboardResponseGameSlug? gameSlug;
    ///  Supported leaderboard sort field.
    LeaderboardSortBy? sortBy;
    ///  The teams property
    Iterable<TeamLeaderboardEntry>? teams;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static TeamLeaderboardResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return TeamLeaderboardResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameSlug'] = (node) => gameSlug = node.getObjectValue<TeamLeaderboardResponseGameSlug>(TeamLeaderboardResponseGameSlug.createFromDiscriminatorValue);
        deserializerMap['sortBy'] = (node) => sortBy = node.getEnumValue<LeaderboardSortBy>((stringValue) => LeaderboardSortBy.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['teams'] = (node) => teams = node.getCollectionOfObjectValues<TeamLeaderboardEntry>(TeamLeaderboardEntry.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<TeamLeaderboardResponseGameSlug>('gameSlug', gameSlug);
        writer.writeEnumValue<LeaderboardSortBy>('sortBy', sortBy, (e) => e?.value);
        writer.writeCollectionOfObjectValues<TeamLeaderboardEntry>('teams', teams);
        writer.writeStringValue('timestamp', timestamp);
    }
}
