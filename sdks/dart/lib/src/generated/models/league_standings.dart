// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_standings_standings.dart';

/// auto generated
/// League standings for a season.
class LeagueStandings implements Parsable {
    ///  Number of teams returned.
    int? count;
    ///  Approved teams with season stats, ordered by standings position. Each item is a team-with-stats document plus a computed rank.
    Iterable<LeagueStandingsStandings>? standings;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueStandings createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueStandings();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['standings'] = (node) => standings = node.getCollectionOfObjectValues<LeagueStandingsStandings>(LeagueStandingsStandings.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<LeagueStandingsStandings>('standings', standings);
        writer.writeStringValue('timestamp', timestamp);
    }
}
