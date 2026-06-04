// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Aggregate map-win tally across the series.
class GameSeriesScore implements Parsable {
    ///  Confirmed map wins for the creator team.
    int? creatorMapWins;
    ///  Confirmed map wins for the opponent team.
    int? opponentMapWins;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameSeriesScore createFromDiscriminatorValue(ParseNode parseNode) {
        return GameSeriesScore();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['creatorMapWins'] = (node) => creatorMapWins = node.getIntValue();
        deserializerMap['opponentMapWins'] = (node) => opponentMapWins = node.getIntValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('creatorMapWins', creatorMapWins);
        writer.writeIntValue('opponentMapWins', opponentMapWins);
    }
}
