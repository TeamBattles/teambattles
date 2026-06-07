// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_games_games.dart';

/// auto generated
/// Games configured for a league.
class LeagueGames implements Parsable {
    ///  Number of configured games returned.
    int? count;
    ///  Games configured for the league.
    Iterable<LeagueGamesGames>? games;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueGames createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueGames();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['games'] = (node) => games = node.getCollectionOfObjectValues<LeagueGamesGames>(LeagueGamesGames.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<LeagueGamesGames>('games', games);
        writer.writeStringValue('timestamp', timestamp);
    }
}
