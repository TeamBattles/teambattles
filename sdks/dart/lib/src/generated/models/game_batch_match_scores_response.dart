// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_batch_match_score_result.dart';

/// auto generated
/// Result of a multi-match batch map-score submission. Always returned with HTTP 200; inspect per-item status.
class GameBatchMatchScoresResponse implements Parsable {
    ///  Number of items that were confirmed.
    int? count;
    ///  Per-item results, in submission order.
    Iterable<GameBatchMatchScoreResult>? submitted;
    ///  True only when every submitted item was confirmed.
    bool? success;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameBatchMatchScoresResponse createFromDiscriminatorValue(ParseNode parseNode) {
        return GameBatchMatchScoresResponse();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['count'] = (node) => count = node.getIntValue();
        deserializerMap['submitted'] = (node) => submitted = node.getCollectionOfObjectValues<GameBatchMatchScoreResult>(GameBatchMatchScoreResult.createFromDiscriminatorValue);
        deserializerMap['success'] = (node) => success = node.getBoolValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeIntValue('count', count);
        writer.writeCollectionOfObjectValues<GameBatchMatchScoreResult>('submitted', submitted);
        writer.writeBoolValue('success', value:success);
    }
}
