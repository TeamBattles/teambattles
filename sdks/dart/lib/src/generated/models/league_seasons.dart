// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './league_seasons_seasons.dart';

/// auto generated
/// Seasons for a league.
class LeagueSeasons implements Parsable {
    ///  Number of seasons returned.
    int? count;
    ///  Season documents for the league.
    Iterable<LeagueSeasonsSeasons>? seasons;
    ///  Response generation time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static LeagueSeasons createFromDiscriminatorValue(ParseNode parseNode) {
        return LeagueSeasons();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['seasons'] = (node) => seasons = node.getCollectionOfObjectValues<LeagueSeasonsSeasons>(LeagueSeasonsSeasons.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<LeagueSeasonsSeasons>('seasons', seasons);
        writer.writeStringValue('timestamp', timestamp);
    }
}
