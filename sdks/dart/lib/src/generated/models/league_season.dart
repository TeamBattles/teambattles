// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_season_season.dart';

/// auto generated
/// Single league season response.
class LeagueSeason implements Parsable {
    ///  The requested league season.
    LeagueSeasonSeason? season;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueSeason createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueSeason();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['season'] = (node) => season = node.getObjectValue<LeagueSeasonSeason>(LeagueSeasonSeason.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeObjectValue<LeagueSeasonSeason>('season', season);
        writer.writeStringValue('timestamp', timestamp);
    }
}
