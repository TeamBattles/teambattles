// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_score.dart';
import './game_series_score.dart';

/// auto generated
/// All map scores for a match plus the aggregate series tally.
class GameScoresResponse implements Parsable {
    ///  All recorded map scores for the match.
    Iterable<GameScore>? scores;
    ///  Aggregate map-win tally across the series.
    GameSeriesScore? seriesScore;
    ///  Server response time (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameScoresResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameScoresResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['scores'] = (node) => scores = node.getCollectionOfObjectValues<GameScore>(GameScore.createFromDiscriminatorValue);
        deserializerMap['seriesScore'] = (node) => seriesScore = node.getObjectValue<GameSeriesScore>(GameSeriesScore.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<GameScore>('scores', scores);
        writer.writeObjectValue<GameSeriesScore>('seriesScore', seriesScore);
        writer.writeStringValue('timestamp', timestamp);
    }
}
