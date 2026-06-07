// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';

/// auto generated
/// Outcome for a single (match, map) item in a multi-match batch.
class GameBatchMatchScoreResult implements Parsable {
    ///  Bare machine-readable error code (e.g. error_game_scope_mismatch), present only when status is failed. Never the raw message.
    String? error;
    ///  Index of the map this result refers to.
    int? mapIndex;
    ///  Match ID this result refers to.
    String? matchId;
    ///  Per-item outcome: "confirmed" on success, "failed" otherwise.
    String? status;
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameBatchMatchScoreResult createFromDiscriminatorValue(ParseNode parseNode) {
        return GameBatchMatchScoreResult();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['error'] = (node) => error = node.getStringValue();
        deserializerMap['mapIndex'] = (node) => mapIndex = node.getIntValue();
        deserializerMap['matchId'] = (node) => matchId = node.getStringValue();
        deserializerMap['status'] = (node) => status = node.getStringValue();
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeStringValue('error', error);
        writer.writeIntValue('mapIndex', mapIndex);
        writer.writeStringValue('matchId', matchId);
        writer.writeStringValue('status', status);
    }
}
