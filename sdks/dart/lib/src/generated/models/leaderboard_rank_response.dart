// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './leaderboard_rank_response_game_slug.dart';
import './leaderboard_rank_response_rank.dart';
import './leaderboard_sort_by.dart';

/// auto generated
/// Leaderboard rank lookup response.
class LeaderboardRankResponse implements Parsable {
    ///  The gameSlug property
    LeaderboardRankResponseGameSlug? gameSlug;
    ///  Resolved entity ID.
    String? id;
    ///  The rank property
    LeaderboardRankResponseRank? rank;
    ///  Supported leaderboard sort field.
    LeaderboardSortBy? sortBy;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeaderboardRankResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return LeaderboardRankResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['gameSlug'] = (node) => gameSlug = node.getObjectValue<LeaderboardRankResponseGameSlug>(LeaderboardRankResponseGameSlug.createFromDiscriminatorValue);
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['rank'] = (node) => rank = node.getObjectValue<LeaderboardRankResponseRank>(LeaderboardRankResponseRank.createFromDiscriminatorValue);
        deserializerMap['sortBy'] = (node) => sortBy = node.getEnumValue<LeaderboardSortBy>((stringValue) => LeaderboardSortBy.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<LeaderboardRankResponseGameSlug>('gameSlug', gameSlug);
        writer.writeStringValue('id', id);
        writer.writeObjectValue<LeaderboardRankResponseRank>('rank', rank);
        writer.writeEnumValue<LeaderboardSortBy>('sortBy', sortBy, (e) => e?.value);
        writer.writeStringValue('timestamp', timestamp);
    }
}
