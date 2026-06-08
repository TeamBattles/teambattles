// ignore_for_file: type=lint
import 'package:microsoft_kiota_abstractions/microsoft_kiota_abstractions.dart';
import './game_multi_match_score_item.dart';

/// auto generated
/// Request body for submitting map scores across multiple matches in a single call (capped at 50 items).
class GameBatchMatchScoresBody implements AdditionalDataHolder, Parsable {
    ///  Stores additional data not described in the OpenAPI description found when deserializing. Can be used for serialization as well.
    @override
    Map<String, Object?> additionalData;
    ///  Map scores to submit across one or more matches. 1-50 entries.
    Iterable<GameMultiMatchScoreItem>? items;
    /// Instantiates a new [GameBatchMatchScoresBody] and sets the default values.
    GameBatchMatchScoresBody() :  
        additionalData = {};
    /// Creates a new instance of the appropriate class based on discriminator value
    ///  [parseNode] The parse node to use to read the discriminator value and create the object
    static GameBatchMatchScoresBody createFromDiscriminatorValue(ParseNode parseNode) {
        return GameBatchMatchScoresBody();
    }
    /// The deserialization information for the current model
    @override
    Map<String, void Function(ParseNode)> getFieldDeserializers() {
        var deserializerMap = <String, void Function(ParseNode)>{};
        deserializerMap['items'] = (node) => items = node.getCollectionOfObjectValues<GameMultiMatchScoreItem>(GameMultiMatchScoreItem.createFromDiscriminatorValue);
        return deserializerMap;
    }
    /// Serializes information the current object
    ///  [writer] Serialization writer to use to serialize this model
    @override
    void serialize(SerializationWriter writer) {
        writer.writeCollectionOfObjectValues<GameMultiMatchScoreItem>('items', items);
        writer.writeAdditionalData(additionalData);
    }
}
