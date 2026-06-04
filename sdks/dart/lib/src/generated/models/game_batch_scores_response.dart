// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_batch_score_result.dart';

/// auto generated
/// Result of a batch map-score submission.
class GameBatchScoresResponse implements Parsable {
    ///  Number of map scores that were confirmed.
    int? count;
    ///  Per-map results, in submission order.
    Iterable<GameBatchScoreResult>? submitted;
    ///  True only when every submitted map score was confirmed.
    bool? success;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameBatchScoresResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameBatchScoresResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['submitted'] = (node) => submitted = node.getCollectionOfObjectValues<GameBatchScoreResult>(GameBatchScoreResult.createFromDiscriminatorValue);
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<GameBatchScoreResult>('submitted', submitted);
        writer.writeBoolValue('success', value:success);
    }
}
