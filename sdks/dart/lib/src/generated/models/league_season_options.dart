// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_season_options_seasons.dart';

/// auto generated
/// Season selector options.
class LeagueSeasonOptions implements Parsable {
    ///  Recommended default option.
    String? defaultSeasonId;
    ///  Season selector options for a league game.
    Iterable<LeagueSeasonOptionsSeasons>? seasons;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueSeasonOptions createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueSeasonOptions();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['defaultSeasonId'] = (node) => defaultSeasonId = node.getStringValue();
        deserializerMap['seasons'] = (node) => seasons = node.getCollectionOfObjectValues<LeagueSeasonOptionsSeasons>(LeagueSeasonOptionsSeasons.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('defaultSeasonId', defaultSeasonId);
        writer.writeCollectionOfObjectValues<LeagueSeasonOptionsSeasons>('seasons', seasons);
        writer.writeStringValue('timestamp', timestamp);
    }
}
