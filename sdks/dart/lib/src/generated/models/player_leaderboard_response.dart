// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './leaderboard_sort_by.dart';
import './player_leaderboard_entry.dart';

/// auto generated
/// Player leaderboard response.
class PlayerLeaderboardResponse implements Parsable {
    ///  The players property
    Iterable<PlayerLeaderboardEntry>? players;
    ///  Supported leaderboard sort field.
    LeaderboardSortBy? sortBy;
    ///  The timestamp property
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static PlayerLeaderboardResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return PlayerLeaderboardResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['players'] = (node) => players = node.getCollectionOfObjectValues<PlayerLeaderboardEntry>(PlayerLeaderboardEntry.createFromDiscriminatorValue);
        deserializerMap['sortBy'] = (node) => sortBy = node.getEnumValue<LeaderboardSortBy>((stringValue) => LeaderboardSortBy.values.where((enumVal) => enumVal.value == stringValue).firstOrNull);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<PlayerLeaderboardEntry>('players', players);
        writer.writeEnumValue<LeaderboardSortBy>('sortBy', sortBy, (e) => e?.value);
        writer.writeStringValue('timestamp', timestamp);
    }
}
