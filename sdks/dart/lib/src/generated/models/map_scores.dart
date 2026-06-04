// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './map_score_item.dart';
import './map_scores_series_score.dart';

/// auto generated
/// All map scores for a match with a series summary.
class MapScores implements Parsable {
    ///  The scores property
    Iterable<MapScoreItem>? scores;
    ///  The seriesScore property
    MapScoresSeriesScore? seriesScore;
    ///  Response timestamp (ISO 8601).
    String? timestamp;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static MapScores createFromDiscriminatorValue(ParseNode parseNode) {
        return MapScores();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['scores'] = (node) => scores = node.getCollectionOfObjectValues<MapScoreItem>(MapScoreItem.createFromDiscriminatorValue);
        deserializerMap['seriesScore'] = (node) => seriesScore = node.getObjectValue<MapScoresSeriesScore>(MapScoresSeriesScore.createFromDiscriminatorValue);
        deserializerMap['timestamp'] = (node) => timestamp = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<MapScoreItem>('scores', scores);
        writer.writeObjectValue<MapScoresSeriesScore>('seriesScore', seriesScore);
        writer.writeStringValue('timestamp', timestamp);
    }
}
