// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './api_user_profile.dart';
import './leaderboard_stats.dart';

/// auto generated
/// Player leaderboard row.
class PlayerLeaderboardEntry implements Parsable {
    ///  User ID.
    String? id;
    ///  The rank property
    int? rank;
    ///  Aggregate stats used for leaderboard ranking.
    LeaderboardStats? stats;
    ///  API-safe public user profile.
    ApiUserProfile? user;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static PlayerLeaderboardEntry createFromDiscriminatorValue(ParseNode parseNode) {
        return PlayerLeaderboardEntry();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['id'] = (node) => id = node.getStringValue();
        deserializerMap['rank'] = (node) => rank = node.getIntValue();
        deserializerMap['stats'] = (node) => stats = node.getObjectValue<LeaderboardStats>(LeaderboardStats.createFromDiscriminatorValue);
        deserializerMap['user'] = (node) => user = node.getObjectValue<ApiUserProfile>(ApiUserProfile.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('id', id);
        writer.writeIntValue('rank', rank);
        writer.writeObjectValue<LeaderboardStats>('stats', stats);
        writer.writeObjectValue<ApiUserProfile>('user', user);
    }
}
