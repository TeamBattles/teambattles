// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_map_score_input.dart';

/// auto generated
/// Request body for submitting one or more map scores in a single call.
class GameBatchScoresBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Map scores to submit. Must contain at least one entry.
    Iterable<GameMapScoreInput>? maps;
    /// Instantiates a new [GameBatchScoresBody] and sets the default values.
    GameBatchScoresBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameBatchScoresBody createFromDiscriminatorValue(ParseNode parseNode) {
        return GameBatchScoresBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['maps'] = (node) => maps = node.getCollectionOfObjectValues<GameMapScoreInput>(GameMapScoreInput.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<GameMapScoreInput>('maps', maps);
        writer.writeAdditionalData(additionalData);
    }
}
